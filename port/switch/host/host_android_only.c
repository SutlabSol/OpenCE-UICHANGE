/*
HOST_ANDROID_ONLY.C

The Android app's host imports the Switch's import table takes with the rest
of port/android/host_imports.list, which the Switch's guest never calls
(port/linux/game/mcc_resource_check.inl and mcc_share.c ask for the hashing
only on Android; steam_downloads.c the Keystore's seal only there): each
refuses, as a host without them would.
*/

#include <stdint.h>

/* an MCC package's fingerprint on the host's threads (port/android/host/host_mcc_hash.c) */
int host_mcc_hash_start(uint32_t request)
{
	(void)request;
	return -1;
}

int host_mcc_hash_wait(int id, int milliseconds, uint32_t result)
{
	(void)id; (void)milliseconds; (void)result;
	return -1;
}

void host_mcc_hash_cancel(int id)
{
	(void)id;
}

/* a file's SHA-256 on the host's threads (the same) */
int host_sha256_start(uint32_t path)
{
	(void)path;
	return -1;
}

int host_sha256_poll(int id, uint32_t digest, uint32_t size)
{
	(void)id; (void)digest; (void)size;
	return -1;
}

void host_sha256_cancel(int id)
{
	(void)id;
}

/* the Steam sign-in's seal, the Android Keystore's (port/android/host/host_steam_seal.c) */
int host_steam_private_folder(char *folder, int size)
{
	(void)folder; (void)size;
	return 0;
}

int host_steam_seal(const char *text, char *out, int out_size)
{
	(void)text;
	if (out && out_size > 0)
		out[0] = 0;
	return 0;
}

int host_steam_unseal(const char *sealed, char *out, int out_size)
{
	(void)sealed;
	if (out && out_size > 0)
		out[0] = 0;
	return 0;
}

void host_steam_seal_forget(void)
{
}
