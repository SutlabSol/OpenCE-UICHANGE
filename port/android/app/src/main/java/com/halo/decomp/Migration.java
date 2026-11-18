package com.halo.decomp;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;

/**
 * The move from the old app, com.halo.decomp (OpenCE's id, which this app had up to build 141), to this one,
 * com.halo.contentevolved.
 *
 * Android keeps an app's files (/sdcard/Android/data/<package>/files, and its own shared_prefs) from every other app,
 * whatever its signing key, so they come through the old app: its last update is the bridge (port/android/bridge),
 * which installs this app and serves its files to an app signed with its key, read-only, through its provider
 * (content://com.halo.decomp.migrate):
 *
 *     list                    one row per file: path ("files/<path>" in the data folder, "prefs/<name>" in
 *                             shared_prefs), size, modified (milliseconds)
 *     file/<path segments>    the file, read-only
 *
 * On its first start (LauncherActivity), with the old app installed and signed with this app's key, this app copies
 * them into its own folders, and offers to uninstall the old app. moved_from_old_app.txt in the data folder marks that
 * it was done, or declined, so it is asked once. An old app without the bridge (a player who downloaded this app by
 * hand) has no provider: the player is asked to open it once, so that it updates itself to the bridge.
 */
final class Migration {
    static final String LEGACY_PACKAGE = BuildConfig.LEGACY_PACKAGE;
    private static final String AUTHORITY = LEGACY_PACKAGE + ".migrate";
    private static final String MARK = "moved_from_old_app.txt";
    /** the old data folder's path, which config.toml may name (a CUSTOM MAPS FOLDER in it, say) */
    private static final String OLD_FOLDER = "Android/data/" + LEGACY_PACKAGE + "/";
    /** text files this small have the old data folder's path changed to this app's */
    private static final long REWRITTEN_TEXT_SIZE = 1024 * 1024;
    /** room left over on the storage, beyond what is copied */
    private static final long SPARE_SPACE = 64L * 1024 * 1024;

    enum State {
        /** nothing to move: no old app, one signed with another key (OpenCE's), or moved (or declined) already */
        NONE,
        /** the old app is the bridge: its files can be copied */
        READY,
        /** the old app is ours but older than the bridge: it has to update itself first */
        OLD_VERSION,
    }

    private Migration() {
    }

    static State state(Context context, File dataRoot) {
        if (dataRoot == null || new File(dataRoot, MARK).exists())
            return State.NONE;
        PackageManager manager = context.getPackageManager();
        try {
            manager.getPackageInfo(LEGACY_PACKAGE, 0);
        } catch (PackageManager.NameNotFoundException e) {
            return State.NONE;
        }
        if (manager.checkSignatures(context.getPackageName(), LEGACY_PACKAGE) != PackageManager.SIGNATURE_MATCH)
            return State.NONE;
        return manager.resolveContentProvider(AUTHORITY, 0) != null ? State.READY : State.OLD_VERSION;
    }

    /** whether this app has data of its own already (its game data or its settings) */
    static boolean hasOwnData(File dataRoot) {
        return new File(dataRoot, "maps/ui.map").isFile() || new File(dataRoot, "config.toml").isFile();
    }

    /** the move done, or declined ("moved", "declined", "skipped"): never asked again */
    static void markDone(File dataRoot, String how) {
        try (OutputStream out = new FileOutputStream(new File(dataRoot, MARK))) {
            out.write(("files from " + LEGACY_PACKAGE + ": " + how + "\n").getBytes(StandardCharsets.UTF_8));
        } catch (IOException e) {
            // asked again at the next start
        }
    }

    /* ---------- what the old app has */

    static final class Entry {
        final String path;
        final long size, modified;

        Entry(String path, long size, long modified) {
            this.path = path;
            this.size = size;
            this.modified = modified;
        }

        /** the game data (maps/), which can be extracted again from the disc image */
        boolean isGameData() {
            return path.startsWith("files/maps/");
        }
    }

    static final class Listing {
        final List<Entry> entries = new ArrayList<>();
        long bytes, gameDataBytes;
    }

    /** files the old app has that are this phone's or this run's, not the player's: never copied */
    private static boolean isLeftBehind(String path) {
        String name = path.substring(path.lastIndexOf('/') + 1);

        if (name.endsWith(".partial"))
            return true;
        switch (path) {
            case "files/" + MARK:
            case "files/hardware_id.txt":
            case "files/hardware_id.txt.tmp":
            case "files/join_link.txt":
            case "files/join_link.txt.tmp":
            case "files/profile_folder.txt":
                return true;
            default:
                return false;
        }
    }

    static Listing list(Context context) throws IOException {
        Uri uri = new Uri.Builder().scheme("content").authority(AUTHORITY).appendPath("list").build();
        Listing listing = new Listing();

        try (Cursor cursor = context.getContentResolver().query(uri, null, null, null, null)) {
            if (cursor == null)
                throw new IOException("the old app did not answer");
            int path = cursor.getColumnIndexOrThrow("path");
            int size = cursor.getColumnIndexOrThrow("size");
            int modified = cursor.getColumnIndexOrThrow("modified");

            while (cursor.moveToNext()) {
                Entry entry = new Entry(cursor.getString(path), cursor.getLong(size), cursor.getLong(modified));

                if (entry.path == null || isLeftBehind(entry.path))
                    continue;
                listing.entries.add(entry);
                listing.bytes += entry.size;
                if (entry.isGameData())
                    listing.gameDataBytes += entry.size;
            }
        } catch (RuntimeException e) {
            // (a SecurityException from the old app, or one that went away)
            throw new IOException("the old app refused: " + e.getMessage(), e);
        }
        return listing;
    }

    /** the bytes the copy needs free (beyond some spare room), with or without the game data */
    static long needed(Listing listing, boolean withGameData) {
        return (withGameData ? listing.bytes : listing.bytes - listing.gameDataBytes) + SPARE_SPACE;
    }

    /* ---------- the copy */

    interface Progress {
        void report(long done, long total);
    }

    /** where entry goes in this app, null for a path that leaves its folder */
    private static File target(Context context, File dataRoot, String path) throws IOException {
        File base;
        String relative;

        if (path.startsWith("files/")) {
            base = dataRoot;
            relative = path.substring("files/".length());
        } else if (path.startsWith("prefs/")) {
            base = new File(context.getDataDir(), "shared_prefs");
            relative = path.substring("prefs/".length());
        } else {
            return null;
        }
        File file = new File(base, relative);
        String inside = base.getCanonicalPath() + File.separator;

        return relative.isEmpty() || !file.getCanonicalPath().startsWith(inside) ? null : file;
    }

    static void copy(Context context, File dataRoot, Listing listing, boolean withGameData, Progress progress)
        throws IOException {
        long total = withGameData ? listing.bytes : listing.bytes - listing.gameDataBytes;
        long done = 0;
        byte[] buffer = new byte[1 << 20];

        for (Entry entry : listing.entries) {
            if (!withGameData && entry.isGameData())
                continue;
            File file = target(context, dataRoot, entry.path);

            if (file == null)
                continue;
            File parent = file.getParentFile();
            if (parent != null && !parent.isDirectory() && !parent.mkdirs())
                throw new IOException("could not make " + parent);
            Uri.Builder builder = new Uri.Builder().scheme("content").authority(AUTHORITY).appendPath("file");
            for (String segment : entry.path.split("/"))
                builder.appendPath(segment);
            File partial = new File(parent, file.getName() + ".moving");

            try (ParcelFileDescriptor descriptor = context.getContentResolver().openFileDescriptor(builder.build(), "r")) {
                if (descriptor == null)
                    throw new IOException("the old app would not give " + entry.path);
                try (InputStream in = new FileInputStream(descriptor.getFileDescriptor());
                     OutputStream out = new FileOutputStream(partial)) {
                    int count;
                    long reported = done;

                    while ((count = in.read(buffer)) > 0) {
                        out.write(buffer, 0, count);
                        done += count;
                        if (done - reported >= (4 << 20)) {
                            progress.report(Math.min(done, total), total);
                            reported = done;
                        }
                    }
                }
            } catch (RuntimeException e) {
                partial.delete();
                throw new IOException(entry.path + ": " + e.getMessage(), e);
            } catch (IOException e) {
                partial.delete();
                throw new IOException(entry.path + ": " + e.getMessage(), e);
            }
            if (!partial.renameTo(file)) {
                file.delete();
                if (!partial.renameTo(file)) {
                    partial.delete();
                    throw new IOException("could not write " + file);
                }
            }
            rewriteOldFolder(file);
            if (entry.modified > 0)
                file.setLastModified(entry.modified);
            progress.report(Math.min(done, total), total);
        }
    }

    /** a settings file's paths into the old data folder, made this app's */
    private static void rewriteOldFolder(File file) {
        String name = file.getName();

        if (!(name.endsWith(".toml") || name.endsWith(".txt") || name.endsWith(".json") || name.endsWith(".ini"))
            || file.length() > REWRITTEN_TEXT_SIZE)
            return;
        try {
            String text = new String(Files.readAllBytes(file.toPath()), StandardCharsets.UTF_8);
            String own = "Android/data/" + BuildConfig.APPLICATION_ID + "/";

            if (!text.contains(OLD_FOLDER))
                return;
            Files.write(file.toPath(), text.replace(OLD_FOLDER, own).getBytes(StandardCharsets.UTF_8));
        } catch (IOException e) {
            // (the file is kept as it was)
        }
    }
}
