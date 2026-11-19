/*
FORGE_VOLUMES.H

Forge's volumes (port/forge/src/forge_volumes.c): places in a map that hurt
or kill whoever is in them, placed from the palette's VOLUMES tab as boxes
(a cube at first), cylinders and spheres, each sized on its three axes; and
the map's own deadly trigger volumes (death_volumes.c's), which keep their
shape (a box of any size) and can be moved, sized and set too.

A volume is a marker-only live instance ('fvol', no object), standing at its
middle; what it is (shape, effect, damage, size) is kept here by its live
index. Its effect:

- APPLY DAMAGE: an amount (a percentage of the unit's health, shields first)
  once, as a unit comes into it;
- CONSTANT DAMAGE: the amount each second while a unit is in it;
- INSTA KILL: a unit in it dies;
- and a map's volume's own MAP SCRIPT (the map's scripts do as they did), or
  OFF.

Every unit is a biped here: one in a vehicle is in a volume if it is. The
host (or a game with no network) hurts them, each tick of a game on the map,
in Forge or not; the network carries the units' health.

A saved map keeps them on VOLUME| lines of its trailer (forge_cache_builder.c),
read as the level's saved state is (forge_runtime_tags.c); a Forge session
sends a volume's settings as !FW: (forge_network.c).

Placed emitters (fire, plasma fire) keep their own damage, which their
effects deal: their Object Settings' DEAL DAMAGE turns it off (no_damage on
the live instance; effects.c asks forge_volumes_effect_damage_blocked).
*/

#ifndef __FORGE_VOLUMES_H
#define __FORGE_VOLUMES_H

#include <stdint.h>

/* ---------- constants */

#define FORGE_GROUP_VOLUME 'fvol'

#define FORGE_VOLUME_BOX_PATH "volume\\box"
#define FORGE_VOLUME_CYLINDER_PATH "volume\\cylinder"
#define FORGE_VOLUME_SPHERE_PATH "volume\\sphere"
/* (a map's own trigger volume, adopted: forge_volumes_adopt_map) */
#define FORGE_VOLUME_MAP_PATH "volume\\map"

/* (world units: each axis's size, from a hand's width to a valley's) */
#define FORGE_VOLUME_SIZE_DEFAULT 2.0f
#define FORGE_VOLUME_SIZE_MIN 0.25f
#define FORGE_VOLUME_SIZE_MAX 200.0f

enum forge_volume_shape
{
	_forge_volume_box = 0,
	_forge_volume_cylinder,
	_forge_volume_sphere,
	/* a map's trigger volume: a box of its own size, oriented as it is */
	_forge_volume_map_box,
	NUMBER_OF_FORGE_VOLUME_SHAPES
};

enum forge_volume_effect
{
	_forge_volume_apply_damage = 0,
	_forge_volume_constant_damage,
	_forge_volume_insta_kill,
	/* (a map's volume's alone: its scripts kill in it, as they did) */
	_forge_volume_map_script,
	_forge_volume_off,
	NUMBER_OF_FORGE_VOLUME_EFFECTS
};

/* the rows of a volume's Object Settings (forge_3d_mode.c) */
enum forge_volume_row
{
	_forge_volume_row_shape = 0,
	_forge_volume_row_effect,
	_forge_volume_row_damage,
	_forge_volume_row_size_x,
	_forge_volume_row_size_y,
	_forge_volume_row_size_z,
	_forge_volume_row_rot_snap,
	_forge_volume_row_floor,
	_forge_volume_row_delete,
	NUMBER_OF_FORGE_VOLUME_ROWS
};

/* ---------- structures */

struct forge_volume
{
	uint8_t used;
	uint8_t shape;
	uint8_t effect;
	/* (moved, sized or set since the level loaded: a map's is written back
	to its trigger volume) */
	uint8_t edited;
	/* the map's trigger volume it is (NONE: one of Forge's) */
	int16_t map_index;
	int16_t pad;
	/* each axis's size: a box's edges, a cylinder's two diameters and its
	height, a sphere's three diameters (world units) */
	float size[3];
	/* a percentage of a unit's health: once (APPLY DAMAGE) or each second
	(CONSTANT DAMAGE) */
	float damage;
};

/* ---------- prototypes/FORGE_VOLUMES.C */

/* a live instance's volume (NULL: none) */
struct forge_volume const *forge_volume_get(int32_t live_idx);
int forge_volume_is(int32_t live_idx);
/* a volume made for a live instance just spawned with a volume's path (a
map's keeps what it was adopted with) */
void forge_volume_spawned(int32_t live_idx, char const *tag_path);
/* a volume moved (its map trigger volume follows) */
void forge_volume_moved(int32_t live_idx);
/* a volume's settings set, and sent to the session's others (broadcast) */
void forge_volume_set(int32_t live_idx, struct forge_volume const *volume, int broadcast);
/* a peer's !FW: fields, or a saved line's */
void forge_volume_apply(int32_t live_idx, int shape, int effect, float damage, float const size[3]);

/* the map's deadly trigger volumes, as volumes of its own (once a level,
forge_init_map_scenario_entities, on a multiplayer map) */
void forge_volumes_adopt_map(void);
/* a level going: every volume forgotten */
void forge_volumes_level_reset(void);

/* the text of a volume's rows (forge_3d_mode.c's panel) */
void forge_volume_row_text(int32_t live_idx, int row, char *label, unsigned long label_size, char *value,
	unsigned long value_size);
/* a row stepped (`dir` -1/1); TRUE when it changed something */
int forge_volume_row_step(int32_t live_idx, int row, int dir);
/* a volume's name: what it is and does ("KILL BOX") */
void forge_volume_describe(int32_t live_idx, char *text, unsigned long size);

/* the saved map's lines (forge_cache_builder.c): how many bytes */
int forge_volumes_save_lines(char *text, unsigned long size);
/* a saved line (forge_runtime_tags.c's VOLUME|...): the volume made */
void forge_volumes_load_line(char const *line);

/* the network's (forge_network.c): a volume's !FW: packet; and every volume
to a machine joining */
int forge_volume_packet(int32_t live_idx, char *text, unsigned long size);

/* each frame of a level (forge_3d_update): the units in the volumes hurt
(the host's), the map's volumes written back */
void forge_volumes_update(void);

/* their shapes in the world, in Forge mode (forge_runtime_tags.c's world
pass): each edge a line drawn by `draw_line` (`color` a marker color
preset, `highlighted` the one held or pointed at) */
void forge_volumes_render(void (*draw_line)(float const *from, float const *to, int color, int highlighted));

/* whether an emitter's tag deals damage: one of its effects' parts is a
damage effect (DEAL DAMAGE shows for it) */
int forge_volumes_tag_deals_damage(long definition_index);
/* an effect on an object whose damage is off (effects.c): TRUE when its
damage parts must do nothing */
int forge_volumes_effect_damage_blocked(long object_index);
/* a placed emitter's DEAL DAMAGE (no_damage on its live instance), kept in
its record for the save (Object Settings, a peer's !FN:) */
void forge_3d_no_damage_apply(int32_t live_idx, int no_damage);
void forge_network_send_no_damage(int32_t live_idx, int no_damage);
void forge_network_send_volume(int32_t live_idx);

#endif
