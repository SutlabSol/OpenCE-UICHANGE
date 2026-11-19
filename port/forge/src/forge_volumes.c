/*
FORGE_VOLUMES.C

Forge's damage and kill volumes (forge_volumes.h): what each is, kept by its
live instance's index; their rows in Object Settings, their saved lines and
packets; the map's deadly trigger volumes adopted and written back; the units
in them hurt each tick; their edges drawn in Forge mode; and the emitters
whose DEAL DAMAGE is off.
*/

#include "cseries.h"
#include "cseries/errors.h"

#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "game/game.h"
#include "objects/objects.h"
#include "objects/object_definitions.h"
#include "units/units.h"
#include "effects/effect_definitions.h"
#include "scenario/scenario.h"
#include "scenario/scenario_definitions.h"
#include "tag_files/tag_groups.h"

#include "forge_engine.h"
#include "forge_volumes.h"

/* ---------- externs */

/* death_volumes.c's: a trigger volume the map kills in */
extern boolean death_volume_is_deadly(short volume_index);

/* ---------- constants */

#define OBJECT_DEFINITION_GROUP_TAG 'obje'
#define EFFECT_GROUP_TAG 'effe'
#define DAMAGE_EFFECT_GROUP_TAG 'jpt!'

/* the units in a volume of APPLY DAMAGE last tick, so a unit is hurt once
as it comes into one */
#define MAXIMUM_VOLUME_OCCUPANTS 256

/* (the line colors: forge_runtime_tags.c's for each) */
enum
{
	_volume_color_damage = 0,
	_volume_color_kill,
	_volume_color_off
};

/* ---------- globals */

static struct forge_volume s_volumes[FORGE_MAX_LIVE_INSTANCES];

static struct
{
	long unit_index;
	int32_t live_idx;
} s_occupants[MAXIMUM_VOLUME_OCCUPANTS], s_occupants_next[MAXIMUM_VOLUME_OCCUPANTS];
static int s_occupant_count;
static long s_last_tick = -1;

static char const *const s_shape_names[NUMBER_OF_FORGE_VOLUME_SHAPES] = { "CUBE", "CYLINDER", "SPHERE", "MAP'S OWN" };
static char const *const s_effect_names[NUMBER_OF_FORGE_VOLUME_EFFECTS] = {
	"APPLY DAMAGE", "CONSTANT DAMAGE", "INSTA KILL", "MAP SCRIPT", "OFF"
};

/* ---------- private code */

static struct forge_live_instance *volume_instance(int32_t live_idx)
{
	struct forge_live_instance *inst;

	if (live_idx < 0 || live_idx >= g_forge.live_instance_count)
		return NULL;
	inst = &g_forge.live_instances[live_idx];
	return inst->active && inst->group_tag == FORGE_GROUP_VOLUME && s_volumes[live_idx].used ? inst : NULL;
}

static float size_clamp(float size)
{
	return size < FORGE_VOLUME_SIZE_MIN ? FORGE_VOLUME_SIZE_MIN : size > FORGE_VOLUME_SIZE_MAX ? FORGE_VOLUME_SIZE_MAX : size;
}

/* the shape a path places */
static int path_shape(char const *tag_path)
{
	if (!tag_path)
		return _forge_volume_box;
	if (!_stricmp(tag_path, FORGE_VOLUME_CYLINDER_PATH))
		return _forge_volume_cylinder;
	if (!_stricmp(tag_path, FORGE_VOLUME_SPHERE_PATH))
		return _forge_volume_sphere;
	if (!_stricmp(tag_path, FORGE_VOLUME_MAP_PATH))
		return _forge_volume_map_box;
	return _forge_volume_box;
}

static char const *shape_path(int shape)
{
	switch (shape)
	{
	case _forge_volume_cylinder: return FORGE_VOLUME_CYLINDER_PATH;
	case _forge_volume_sphere: return FORGE_VOLUME_SPHERE_PATH;
	case _forge_volume_map_box: return FORGE_VOLUME_MAP_PATH;
	default: return FORGE_VOLUME_BOX_PATH;
	}
}

/* (forge_3d_mode.c's, for an instance's turn) */
static void euler_basis(float yaw, float pitch, float roll, real_vector3d *forward, real_vector3d *left, real_vector3d *up)
{
	float cy = (float)cos((double)yaw), sy = (float)sin((double)yaw);
	float cp = (float)cos((double)pitch), sp = (float)sin((double)pitch);
	float cr = (float)cos((double)roll), sr = (float)sin((double)roll);

	forward->i = cy * cp;
	forward->j = sy * cp;
	forward->k = sp;
	up->i = -cy * sp * cr + sy * sr;
	up->j = -sy * sp * cr - cy * sr;
	up->k = cp * cr;
	left->i = up->j * forward->k - up->k * forward->j;
	left->j = up->k * forward->i - up->i * forward->k;
	left->k = up->i * forward->j - up->j * forward->i;
}

static void basis_to_euler(real_vector3d const *forward, real_vector3d const *up, float *yaw, float *pitch, float *roll)
{
	float fk = PIN(forward->k, -1.0f, 1.0f);

	*pitch = (float)asin((double)fk);
	if (fk > 0.9995f || fk < -0.9995f)
	{
		*yaw = fk > 0.0f ? (float)atan2((double)-up->j, (double)-up->i) : (float)atan2((double)up->j, (double)up->i);
		*roll = 0.0f;
	}
	else
	{
		float cy, sy, cp, sp;

		*yaw = (float)atan2((double)forward->j, (double)forward->i);
		cy = (float)cos((double)*yaw);
		sy = (float)sin((double)*yaw);
		cp = (float)cos((double)*pitch);
		sp = (float)sin((double)*pitch);
		/* (up = -cy*sp*cr + sy*sr, -sy*sp*cr - cy*sr, cp*cr) */
		*roll = (float)atan2((double)(sy * up->i - cy * up->j), (double)(up->k / (cp != 0.0f ? cp : 1.0f)));
		(void)sp;
	}
}

/* a point in the volume's own frame: along its forward, left and up from
its middle */
static void local_point(struct forge_live_instance const *inst, real_point3d const *point, float local[3])
{
	real_vector3d forward, left, up;
	float dx = point->x - inst->x, dy = point->y - inst->y, dz = point->z - inst->z;

	euler_basis(inst->yaw, inst->pitch, inst->roll, &forward, &left, &up);
	local[0] = dx * forward.i + dy * forward.j + dz * forward.k;
	local[1] = dx * left.i + dy * left.j + dz * left.k;
	local[2] = dx * up.i + dy * up.j + dz * up.k;
}

static int volume_contains(struct forge_live_instance const *inst, struct forge_volume const *volume,
	real_point3d const *point)
{
	float local[3];
	float hx = volume->size[0] * 0.5f, hy = volume->size[1] * 0.5f, hz = volume->size[2] * 0.5f;
	float bound = hx > hy ? hx : hy;

	bound = bound > hz ? bound : hz;
	/* (far from its middle: in none of its shapes) */
	if (fabs((double)(point->x - inst->x)) > bound * 1.75f || fabs((double)(point->y - inst->y)) > bound * 1.75f ||
		fabs((double)(point->z - inst->z)) > bound * 1.75f)
	{
		return 0;
	}
	local_point(inst, point, local);
	switch (volume->shape)
	{
	case _forge_volume_cylinder:
	{
		float u = local[0] / hx, v = local[1] / hy;

		return u * u + v * v <= 1.0f && fabs((double)local[2]) <= hz;
	}
	case _forge_volume_sphere:
	{
		float u = local[0] / hx, v = local[1] / hy, w = local[2] / hz;

		return u * u + v * v + w * w <= 1.0f;
	}
	default:
		return fabs((double)local[0]) <= hx && fabs((double)local[1]) <= hy && fabs((double)local[2]) <= hz;
	}
}

/* a map's volume put back in its trigger volume: where it is, as big as it
is; with an effect of Forge's (or OFF), empty, so its scripts kill in it no
more */
static void map_volume_write(int32_t live_idx)
{
	struct scenario *scenario = global_scenario_try_and_get();
	struct forge_live_instance const *inst = volume_instance(live_idx);
	struct forge_volume *volume = &s_volumes[live_idx];
	struct scenario_trigger_volume *trigger;
	real_vector3d forward, left, up;

	if (!scenario || !inst || volume->map_index < 0 || volume->map_index >= scenario->trigger_volumes.count)
		return;
	trigger = TAG_BLOCK_GET_ELEMENT(&scenario->trigger_volumes, volume->map_index, struct scenario_trigger_volume);
	euler_basis(inst->yaw, inst->pitch, inst->roll, &forward, &left, &up);
	trigger->type = _scenario_trigger_volume_type_oriented;
	trigger->forward = forward;
	trigger->up = up;
	trigger->position.x = inst->x - 0.5f * (forward.i * volume->size[0] + left.i * volume->size[1] + up.i * volume->size[2]);
	trigger->position.y = inst->y - 0.5f * (forward.j * volume->size[0] + left.j * volume->size[1] + up.j * volume->size[2]);
	trigger->position.z = inst->z - 0.5f * (forward.k * volume->size[0] + left.k * volume->size[1] + up.k * volume->size[2]);
	if (volume->effect == _forge_volume_map_script)
	{
		trigger->extents.i = volume->size[0];
		trigger->extents.j = volume->size[1];
		trigger->extents.k = volume->size[2];
	}
	else
	{
		trigger->extents.i = trigger->extents.j = trigger->extents.k = 0.0f;
	}
}

static void volume_changed(int32_t live_idx)
{
	s_volumes[live_idx].edited = 1;
	if (s_volumes[live_idx].map_index >= 0)
		map_volume_write(live_idx);
}

/* a unit's health taken by a part of all it has (shields first), killed
when none is left */
static void unit_hurt(long unit_index, struct unit_datum *unit, float fraction)
{
	float body_max = unit->object.maximum_body_vitality > 0.0f ? unit->object.maximum_body_vitality : 1.0f;
	float shield_max = unit->object.maximum_shield_vitality > 0.0f ? unit->object.maximum_shield_vitality : 0.0f;
	float points = fraction * (body_max + shield_max);

	if (points <= 0.0f)
		return;
	if (unit->object.shield_stun_ticks < TICKS_PER_SECOND)
		unit->object.shield_stun_ticks = TICKS_PER_SECOND;
	if (shield_max > 0.0f && unit->object.shield_vitality > 0.0f)
	{
		float shield = unit->object.shield_vitality * shield_max;

		if (shield >= points)
		{
			unit->object.shield_vitality = (shield - points) / shield_max;
			return;
		}
		points -= shield;
		unit->object.shield_vitality = 0.0f;
	}
	unit->object.body_vitality -= points / body_max;
	if (unit->object.body_vitality <= 0.0f)
	{
		unit->object.body_vitality = 0.0f;
		unit_kill(unit_index);
	}
}

static int occupant_was(long unit_index, int32_t live_idx)
{
	int k;

	for (k = 0; k < s_occupant_count; k++)
	{
		if (s_occupants[k].unit_index == unit_index && s_occupants[k].live_idx == live_idx)
			return 1;
	}
	return 0;
}

/* the units in the volumes hurt, for `ticks` ticks */
static void volumes_hurt(int ticks)
{
	struct object_iterator iterator;
	struct unit_datum *unit;
	int next_count = 0;
	int32_t i;
	int any = 0;

	for (i = 0; i < g_forge.live_instance_count && !any; i++)
	{
		struct forge_live_instance const *inst = volume_instance(i);

		any = inst && s_volumes[i].effect <= _forge_volume_insta_kill;
	}
	if (!any)
	{
		s_occupant_count = 0;
		return;
	}
	object_iterator_new(&iterator, _object_mask_biped, 0);
	while ((unit = (struct unit_datum *)object_iterator_next(&iterator)) != NULL)
	{
		long unit_index = iterator.index;

		if (TEST_FLAG(unit->object.damage_flags, _object_dead_bit) ||
			TEST_FLAG(unit->object.damage_flags, _object_cannot_take_damage_bit))
		{
			continue;
		}
		for (i = 0; i < g_forge.live_instance_count; i++)
		{
			struct forge_live_instance const *inst = volume_instance(i);
			struct forge_volume const *volume = &s_volumes[i];

			if (!inst || volume->effect > _forge_volume_insta_kill ||
				!volume_contains(inst, volume, &unit->object.bounding_sphere_center))
			{
				continue;
			}
			if (volume->effect == _forge_volume_insta_kill)
			{
				unit->object.shield_vitality = 0.0f;
				unit->object.body_vitality = 0.0f;
				unit_kill(unit_index);
				break;
			}
			if (volume->effect == _forge_volume_constant_damage)
			{
				unit_hurt(unit_index, unit, volume->damage / 100.0f / (float)TICKS_PER_SECOND * (float)ticks);
			}
			else
			{
				if (!occupant_was(unit_index, i))
					unit_hurt(unit_index, unit, volume->damage / 100.0f);
				if (next_count < MAXIMUM_VOLUME_OCCUPANTS)
				{
					s_occupants_next[next_count].unit_index = unit_index;
					s_occupants_next[next_count].live_idx = i;
					next_count++;
				}
			}
			if (TEST_FLAG(unit->object.damage_flags, _object_dead_bit))
				break;
		}
	}
	memcpy(s_occupants, s_occupants_next, (size_t)next_count * sizeof(s_occupants[0]));
	s_occupant_count = next_count;
}

/* ---------- public code */

struct forge_volume const *forge_volume_get(int32_t live_idx)
{
	return volume_instance(live_idx) ? &s_volumes[live_idx] : NULL;
}

int forge_volume_is(int32_t live_idx)
{
	return volume_instance(live_idx) != NULL;
}

void forge_volume_spawned(int32_t live_idx, char const *tag_path)
{
	struct forge_volume *volume;
	int shape = path_shape(tag_path);

	if (live_idx < 0 || live_idx >= FORGE_MAX_LIVE_INSTANCES)
		return;
	volume = &s_volumes[live_idx];
	/* (a map's, made again at its place by a peer's spawn: as adopted) */
	if (shape == _forge_volume_map_box && volume->used && volume->map_index >= 0)
		return;
	memset(volume, 0, sizeof(*volume));
	volume->used = 1;
	volume->shape = (uint8_t)(shape == _forge_volume_map_box ? _forge_volume_box : shape);
	volume->effect = _forge_volume_insta_kill;
	volume->map_index = NONE;
	volume->size[0] = volume->size[1] = volume->size[2] = FORGE_VOLUME_SIZE_DEFAULT;
	volume->damage = 25.0f;
}

void forge_volume_moved(int32_t live_idx)
{
	if (volume_instance(live_idx))
		volume_changed(live_idx);
}

void forge_volume_apply(int32_t live_idx, int shape, int effect, float damage, float const size[3])
{
	struct forge_volume *volume;
	int k;

	if (!volume_instance(live_idx))
		return;
	volume = &s_volumes[live_idx];
	/* (a map's keeps its box; Forge's are one of the three) */
	if (volume->map_index < 0 && shape >= 0 && shape < _forge_volume_map_box)
		volume->shape = (uint8_t)shape;
	if (effect >= 0 && effect < NUMBER_OF_FORGE_VOLUME_EFFECTS &&
		(effect != _forge_volume_map_script || volume->map_index >= 0))
	{
		volume->effect = (uint8_t)effect;
	}
	volume->damage = PIN(damage, 0.0f, 1000.0f);
	for (k = 0; k < 3; k++)
		volume->size[k] = size_clamp(size[k]);
	volume_changed(live_idx);
}

void forge_volume_set(int32_t live_idx, struct forge_volume const *settings, int broadcast)
{
	if (!settings || !volume_instance(live_idx))
		return;
	forge_volume_apply(live_idx, settings->shape, settings->effect, settings->damage, settings->size);
	if (broadcast)
		forge_network_send_volume(live_idx);
}

void forge_volumes_level_reset(void)
{
	memset(s_volumes, 0, sizeof(s_volumes));
	s_occupant_count = 0;
	s_last_tick = -1;
}

void forge_volumes_adopt_map(void)
{
	struct scenario *scenario = global_scenario_try_and_get();
	short index;
	int adopted = 0;
	int32_t i;

	/* (once a level: already adopted, the level's are there) */
	for (i = 0; i < g_forge.live_instance_count; i++)
	{
		if (volume_instance(i) && s_volumes[i].map_index >= 0)
			return;
	}
	forge_volumes_level_reset();
	/* (a multiplayer map's alone: Forge edits no other, and a campaign
	level's triggers are its story's) */
	if (!scenario || scenario->type != 1)
		return;
	for (index = 0; index < scenario->trigger_volumes.count; index++)
	{
		struct scenario_trigger_volume const *trigger =
			TAG_BLOCK_GET_ELEMENT(&scenario->trigger_volumes, index, struct scenario_trigger_volume);
		real_vector3d forward, up, left;
		float size[3];
		float yaw = 0.0f, pitch = 0.0f, roll = 0.0f;
		real_point3d middle;
		int32_t live_idx;

		if (!death_volume_is_deadly(index))
			continue;
		if (trigger->type == _scenario_trigger_volume_type_axis_aligned)
		{
			size[0] = trigger->bounds.x1 - trigger->bounds.x0;
			size[1] = trigger->bounds.y1 - trigger->bounds.y0;
			size[2] = trigger->bounds.z1 - trigger->bounds.z0;
			middle.x = 0.5f * (trigger->bounds.x0 + trigger->bounds.x1);
			middle.y = 0.5f * (trigger->bounds.y0 + trigger->bounds.y1);
			middle.z = 0.5f * (trigger->bounds.z0 + trigger->bounds.z1);
		}
		else
		{
			forward = trigger->forward;
			up = trigger->up;
			left.i = up.j * forward.k - up.k * forward.j;
			left.j = up.k * forward.i - up.i * forward.k;
			left.k = up.i * forward.j - up.j * forward.i;
			size[0] = trigger->extents.i;
			size[1] = trigger->extents.j;
			size[2] = trigger->extents.k;
			middle.x = trigger->position.x + 0.5f * (forward.i * size[0] + left.i * size[1] + up.i * size[2]);
			middle.y = trigger->position.y + 0.5f * (forward.j * size[0] + left.j * size[1] + up.j * size[2]);
			middle.z = trigger->position.z + 0.5f * (forward.k * size[0] + left.k * size[1] + up.k * size[2]);
			basis_to_euler(&forward, &up, &yaw, &pitch, &roll);
		}
		if (size[0] <= 0.0f || size[1] <= 0.0f || size[2] <= 0.0f)
			continue;
		live_idx = forge_3d_spawn_object_at(FORGE_GROUP_VOLUME, FORGE_VOLUME_MAP_PATH, 1, middle.x, middle.y, middle.z,
			yaw, pitch, roll, 0, 0);
		if (live_idx < 0)
			break;
		s_volumes[live_idx].used = 1;
		s_volumes[live_idx].shape = _forge_volume_map_box;
		s_volumes[live_idx].effect = _forge_volume_map_script;
		s_volumes[live_idx].map_index = index;
		s_volumes[live_idx].size[0] = size[0];
		s_volumes[live_idx].size[1] = size[1];
		s_volumes[live_idx].size[2] = size[2];
		s_volumes[live_idx].damage = 25.0f;
		s_volumes[live_idx].edited = 0;
		snprintf(g_forge.live_instances[live_idx].label, sizeof(g_forge.live_instances[live_idx].label), "%s",
			trigger->name);
		adopted++;
	}
	if (adopted)
		error(_error_silent, "forge volumes: %d of the map's deadly trigger volumes adopted", adopted);
}

void forge_volume_describe(int32_t live_idx, char *text, unsigned long size)
{
	struct forge_volume const *volume = forge_volume_get(live_idx);
	struct forge_live_instance const *inst = volume_instance(live_idx);

	if (!volume || !inst)
	{
		snprintf(text, size, "VOLUME");
		return;
	}
	if (volume->map_index >= 0)
	{
		snprintf(text, size, "MAP VOLUME %s%s(%s)", inst->label, inst->label[0] ? " " : "", s_effect_names[volume->effect]);
		return;
	}
	snprintf(text, size, "%s %s", s_effect_names[volume->effect], s_shape_names[volume->shape]);
}

void forge_volume_row_text(int32_t live_idx, int row, char *label, unsigned long label_size, char *value,
	unsigned long value_size)
{
	struct forge_volume const *volume = forge_volume_get(live_idx);
	static char const *const axes[3] = { "LENGTH", "WIDTH", "HEIGHT" };

	label[0] = 0;
	value[0] = 0;
	if (!volume)
		return;
	switch (row)
	{
	case _forge_volume_row_shape:
		snprintf(label, label_size, "SHAPE:");
		snprintf(value, value_size, "%s", s_shape_names[volume->shape]);
		break;
	case _forge_volume_row_effect:
		snprintf(label, label_size, "EFFECT:");
		snprintf(value, value_size, "%s", s_effect_names[volume->effect]);
		break;
	case _forge_volume_row_damage:
		snprintf(label, label_size, "DAMAGE:");
		if (volume->effect == _forge_volume_apply_damage)
			snprintf(value, value_size, "%.0f%% ONCE", (double)volume->damage);
		else if (volume->effect == _forge_volume_constant_damage)
			snprintf(value, value_size, "%.0f%% A SECOND", (double)volume->damage);
		else
			snprintf(value, value_size, "-");
		break;
	case _forge_volume_row_size_x:
	case _forge_volume_row_size_y:
	case _forge_volume_row_size_z:
	{
		int axis = row - _forge_volume_row_size_x;

		/* (a cylinder's and a sphere's are diameters) */
		snprintf(label, label_size, "%s:",
			volume->shape == _forge_volume_sphere || (volume->shape == _forge_volume_cylinder && axis < 2) ?
			(axis == 0 ? "DIAMETER X" : axis == 1 ? "DIAMETER Y" : "DIAMETER Z") : axes[axis]);
		snprintf(value, value_size, "%.2f", (double)volume->size[axis]);
		break;
	}
	default:
		break;
	}
}

/* a size's next step: quarters to 4, halves to 10, wholes to 50, fives past */
static float size_step(float size, int dir)
{
	float step = size < 4.0f - 0.001f || (dir < 0 && size <= 4.0f + 0.001f) ? 0.25f :
		size < 10.0f - 0.001f || (dir < 0 && size <= 10.0f + 0.001f) ? 0.5f :
		size < 50.0f - 0.001f || (dir < 0 && size <= 50.0f + 0.001f) ? 1.0f : 5.0f;
	float next = size + step * (float)dir;

	return size_clamp((float)floor((double)(next / step) + 0.5) * step);
}

int forge_volume_row_step(int32_t live_idx, int row, int dir)
{
	struct forge_volume const *now = forge_volume_get(live_idx);
	struct forge_volume settings;

	if (!now || dir == 0)
		return 0;
	settings = *now;
	switch (row)
	{
	case _forge_volume_row_shape:
		if (settings.map_index >= 0)
		{
			forge_set_status("A map's volume keeps its own shape");
			return 0;
		}
		settings.shape = (uint8_t)((settings.shape + _forge_volume_map_box + dir) % _forge_volume_map_box);
		break;
	case _forge_volume_row_effect:
	{
		/* (MAP SCRIPT a map's alone) */
		int count = NUMBER_OF_FORGE_VOLUME_EFFECTS;
		int effect = settings.effect;

		do
		{
			effect = (effect + count + dir) % count;
		} while (effect == _forge_volume_map_script && settings.map_index < 0);
		settings.effect = (uint8_t)effect;
		break;
	}
	case _forge_volume_row_damage:
		if (settings.effect != _forge_volume_apply_damage && settings.effect != _forge_volume_constant_damage)
		{
			forge_set_status("Only APPLY DAMAGE and CONSTANT DAMAGE have an amount");
			return 0;
		}
		settings.damage = PIN(settings.damage + (float)dir * (settings.damage < 10.0f || (dir < 0 && settings.damage <= 10.0f) ?
			1.0f : 5.0f), 1.0f, 100.0f);
		break;
	case _forge_volume_row_size_x:
	case _forge_volume_row_size_y:
	case _forge_volume_row_size_z:
		settings.size[row - _forge_volume_row_size_x] = size_step(settings.size[row - _forge_volume_row_size_x], dir);
		break;
	default:
		return 0;
	}
	forge_volume_set(live_idx, &settings, 1);
	return 1;
}

int forge_volumes_save_lines(char *text, unsigned long size)
{
	int length = 0;
	int32_t i;

	if (!text || !size)
		return 0;
	text[0] = 0;
	for (i = 0; i < g_forge.live_instance_count; i++)
	{
		struct forge_live_instance const *inst = volume_instance(i);
		struct forge_volume const *volume = &s_volumes[i];
		int written;

		/* (a map's as it was is the map's own) */
		if (!inst || (volume->map_index >= 0 && !volume->edited))
			continue;
		written = snprintf(text + length, size - (unsigned long)length,
			"VOLUME|%d|%d|%.1f|%.4f|%.4f|%.4f|%.4f|%.4f|%.4f|%.3f|%.3f|%.3f|%d\r\n",
			(int)volume->shape, (int)volume->effect, (double)volume->damage, inst->x, inst->y, inst->z, inst->yaw,
			inst->pitch, inst->roll, (double)volume->size[0], (double)volume->size[1], (double)volume->size[2],
			(int)volume->map_index);
		if (written <= 0 || length + written >= (int)size)
			break;
		length += written;
	}
	return length;
}

void forge_volumes_load_line(char const *line)
{
	int shape = 0, effect = 0, map_index = NONE;
	float damage = 0.0f, x = 0.0f, y = 0.0f, z = 0.0f, yaw = 0.0f, pitch = 0.0f, roll = 0.0f;
	float size[3] = { FORGE_VOLUME_SIZE_DEFAULT, FORGE_VOLUME_SIZE_DEFAULT, FORGE_VOLUME_SIZE_DEFAULT };
	int32_t live_idx = -1;
	int32_t i;

	if (!line || strncmp(line, "VOLUME|", 7))
		return;
	if (sscanf(line + 7, "%d|%d|%f|%f|%f|%f|%f|%f|%f|%f|%f|%f|%d", &shape, &effect, &damage, &x, &y, &z, &yaw, &pitch,
		&roll, &size[0], &size[1], &size[2], &map_index) != 13)
	{
		return;
	}
	if (map_index >= 0)
	{
		/* (the map's, adopted as the level began: moved and set) */
		for (i = 0; i < g_forge.live_instance_count && live_idx < 0; i++)
		{
			if (volume_instance(i) && s_volumes[i].map_index == map_index)
				live_idx = i;
		}
		if (live_idx < 0)
			return;
		forge_3d_move_instance(live_idx, x, y, z, yaw, pitch, roll, 0);
	}
	else
	{
		live_idx = forge_3d_spawn_object_at(FORGE_GROUP_VOLUME, shape_path(shape), 1, x, y, z, yaw, pitch, roll, 0, 0);
		if (live_idx < 0)
			return;
	}
	forge_volume_apply(live_idx, shape, effect, damage, size);
}

int forge_volume_packet(int32_t live_idx, char *text, unsigned long size)
{
	struct forge_volume const *volume = forge_volume_get(live_idx);

	if (!volume)
		return 0;
	/* (the chat line's 64 bytes: sizes in hundredths) */
	snprintf(text, size, "!FW:%d:%d:%d:%d:%d:%d:%d", (int)live_idx, (int)volume->shape, (int)volume->effect,
		(int)(volume->damage + 0.5f), (int)(volume->size[0] * 100.0f + 0.5f), (int)(volume->size[1] * 100.0f + 0.5f),
		(int)(volume->size[2] * 100.0f + 0.5f));
	return 1;
}

void forge_volumes_update(void)
{
	long now = game_time_get();
	int ticks;
	int32_t i;

	/* (a map's moved or set: its trigger volume follows, a peer's change
	too) */
	for (i = 0; i < g_forge.live_instance_count; i++)
	{
		if (volume_instance(i) && s_volumes[i].map_index >= 0 && s_volumes[i].edited)
			map_volume_write(i);
	}
	if (s_last_tick < 0 || now < s_last_tick)
		s_last_tick = now;
	ticks = (int)(now - s_last_tick);
	s_last_tick = now;
	if (ticks <= 0)
		return;
	/* (a pause, a load: one tick's) */
	if (ticks > TICKS_PER_SECOND)
		ticks = 1;
	/* (the host hurts; the network carries the units' health) */
	if (game_connection() == _game_connection_network_client)
		return;
	volumes_hurt(ticks);
}

/* ---------- the shapes' geometry: edges (lines) and faces (parallelograms:
a corner and its two sides), in the world, for drawing and picking */

enum
{
	VOLUME_RING_SEGMENTS = 20,
	/* (a sphere's faces: bands of latitude, each of segments; a cylinder's
	caps: strips across) */
	VOLUME_SPHERE_BANDS = 8,
	VOLUME_SPHERE_SEGMENTS = 14,
	VOLUME_CAP_STRIPS = 8
};

struct volume_frame
{
	struct forge_live_instance const *inst;
	real_vector3d forward, left, up;
	float hx, hy, hz;
};

static void volume_frame_make(struct forge_live_instance const *inst, struct forge_volume const *volume,
	struct volume_frame *frame)
{
	frame->inst = inst;
	euler_basis(inst->yaw, inst->pitch, inst->roll, &frame->forward, &frame->left, &frame->up);
	frame->hx = volume->size[0] * 0.5f;
	frame->hy = volume->size[1] * 0.5f;
	frame->hz = volume->size[2] * 0.5f;
}

/* a point of the volume's frame (along forward, left, up from its middle) in the world */
static void frame_point(struct volume_frame const *frame, float a, float b, float c, float out[3])
{
	out[0] = frame->inst->x + frame->forward.i * a + frame->left.i * b + frame->up.i * c;
	out[1] = frame->inst->y + frame->forward.j * a + frame->left.j * b + frame->up.j * c;
	out[2] = frame->inst->z + frame->forward.k * a + frame->left.k * b + frame->up.k * c;
}

/* a direction of the frame in the world */
static void frame_vector(struct volume_frame const *frame, float a, float b, float c, float out[3])
{
	out[0] = frame->forward.i * a + frame->left.i * b + frame->up.i * c;
	out[1] = frame->forward.j * a + frame->left.j * b + frame->up.j * c;
	out[2] = frame->forward.k * a + frame->left.k * b + frame->up.k * c;
}

/* a point on an ellipsoid's surface: at latitude lat (-pi/2 to pi/2) and longitude lon */
static void sphere_point(struct volume_frame const *frame, float lat, float lon, float out[3])
{
	float c = (float)cos((double)lat);

	frame_point(frame, frame->hx * c * (float)cos((double)lon), frame->hy * c * (float)sin((double)lon),
		frame->hz * (float)sin((double)lat), out);
}

/* each edge of a volume */
static void volume_edges(struct forge_volume const *volume, struct volume_frame const *frame,
	void (*edge)(void *context, float const *from, float const *to), void *context)
{
	float hx = frame->hx, hy = frame->hy, hz = frame->hz;
	int k;

	if (volume->shape == _forge_volume_box || volume->shape == _forge_volume_map_box)
	{
		static signed char const corners[8][3] = {
			{ -1, -1, -1 }, { 1, -1, -1 }, { 1, 1, -1 }, { -1, 1, -1 },
			{ -1, -1, 1 }, { 1, -1, 1 }, { 1, 1, 1 }, { -1, 1, 1 }
		};
		static unsigned char const edges[12][2] = {
			{ 0, 1 }, { 1, 2 }, { 2, 3 }, { 3, 0 }, { 4, 5 }, { 5, 6 }, { 6, 7 }, { 7, 4 },
			{ 0, 4 }, { 1, 5 }, { 2, 6 }, { 3, 7 }
		};

		for (k = 0; k < 12; k++)
		{
			float from[3], to[3];
			signed char const *a = corners[edges[k][0]];
			signed char const *b = corners[edges[k][1]];

			frame_point(frame, hx * a[0], hy * a[1], hz * a[2], from);
			frame_point(frame, hx * b[0], hy * b[1], hz * b[2], to);
			edge(context, from, to);
		}
		return;
	}
	{
		/* (a cylinder: its two rings and four sides; a sphere: its three great rings) */
		int rings = volume->shape == _forge_volume_cylinder ? 2 : 3;
		int ring;

		for (ring = 0; ring < rings; ring++)
		{
			for (k = 0; k < VOLUME_RING_SEGMENTS; k++)
			{
				float a0 = (float)k * 6.2831853f / (float)VOLUME_RING_SEGMENTS;
				float a1 = (float)(k + 1) * 6.2831853f / (float)VOLUME_RING_SEGMENTS;
				float c0 = (float)cos((double)a0), s0 = (float)sin((double)a0);
				float c1 = (float)cos((double)a1), s1 = (float)sin((double)a1);
				float from[3], to[3];

				if (volume->shape == _forge_volume_cylinder)
				{
					float h = ring == 0 ? -hz : hz;

					frame_point(frame, hx * c0, hy * s0, h, from);
					frame_point(frame, hx * c1, hy * s1, h, to);
				}
				else if (ring == 0)
				{
					frame_point(frame, hx * c0, hy * s0, 0.0f, from);
					frame_point(frame, hx * c1, hy * s1, 0.0f, to);
				}
				else if (ring == 1)
				{
					frame_point(frame, hx * c0, 0.0f, hz * s0, from);
					frame_point(frame, hx * c1, 0.0f, hz * s1, to);
				}
				else
				{
					frame_point(frame, 0.0f, hy * c0, hz * s0, from);
					frame_point(frame, 0.0f, hy * c1, hz * s1, to);
				}
				edge(context, from, to);
			}
		}
		if (volume->shape == _forge_volume_cylinder)
		{
			for (k = 0; k < 4; k++)
			{
				float angle = (float)k * 1.5707963f;
				float from[3], to[3];

				frame_point(frame, hx * (float)cos((double)angle), hy * (float)sin((double)angle), -hz, from);
				frame_point(frame, hx * (float)cos((double)angle), hy * (float)sin((double)angle), hz, to);
				edge(context, from, to);
			}
		}
	}
}

/* each face of a volume, as parallelograms (a corner, and its two sides from
it): a box's six, a cylinder's side in panels and its caps in strips, a
sphere's in bands of panels */
static void volume_faces(struct forge_volume const *volume, struct volume_frame const *frame,
	void (*face)(void *context, float const *corner, float const *side_a, float const *side_b), void *context)
{
	float hx = frame->hx, hy = frame->hy, hz = frame->hz;
	float corner[3], a[3], b[3];
	int k;

	if (volume->shape == _forge_volume_box || volume->shape == _forge_volume_map_box)
	{
		int axis, sign;

		for (axis = 0; axis < 3; axis++)
		{
			for (sign = -1; sign <= 1; sign += 2)
			{
				float half[3] = { hx, hy, hz };
				float at[3], side_a[3] = { 0.0f, 0.0f, 0.0f }, side_b[3] = { 0.0f, 0.0f, 0.0f };
				int u = (axis + 1) % 3, v = (axis + 2) % 3;

				at[axis] = half[axis] * (float)sign;
				at[u] = -half[u];
				at[v] = -half[v];
				side_a[u] = 2.0f * half[u];
				side_b[v] = 2.0f * half[v];
				frame_point(frame, at[0], at[1], at[2], corner);
				frame_vector(frame, side_a[0], side_a[1], side_a[2], a);
				frame_vector(frame, side_b[0], side_b[1], side_b[2], b);
				face(context, corner, a, b);
			}
		}
		return;
	}
	if (volume->shape == _forge_volume_cylinder)
	{
		for (k = 0; k < VOLUME_RING_SEGMENTS; k++)
		{
			float a0 = (float)k * 6.2831853f / (float)VOLUME_RING_SEGMENTS;
			float a1 = (float)(k + 1) * 6.2831853f / (float)VOLUME_RING_SEGMENTS;
			float next[3];

			frame_point(frame, hx * (float)cos((double)a0), hy * (float)sin((double)a0), -hz, corner);
			frame_point(frame, hx * (float)cos((double)a1), hy * (float)sin((double)a1), -hz, next);
			a[0] = next[0] - corner[0];
			a[1] = next[1] - corner[1];
			a[2] = next[2] - corner[2];
			frame_vector(frame, 0.0f, 0.0f, 2.0f * hz, b);
			face(context, corner, a, b);
		}
		/* (each cap in strips across its forward axis, each as wide as the
		ellipse at its middle) */
		for (k = 0; k < VOLUME_CAP_STRIPS; k++)
		{
			float u0 = -1.0f + 2.0f * (float)k / (float)VOLUME_CAP_STRIPS;
			float um = u0 + 1.0f / (float)VOLUME_CAP_STRIPS;
			float w = (float)sqrt((double)MAX(0.0f, 1.0f - um * um));
			int cap;

			for (cap = -1; cap <= 1; cap += 2)
			{
				frame_point(frame, hx * u0, -hy * w, hz * (float)cap, corner);
				frame_vector(frame, hx * 2.0f / (float)VOLUME_CAP_STRIPS, 0.0f, 0.0f, a);
				frame_vector(frame, 0.0f, 2.0f * hy * w, 0.0f, b);
				face(context, corner, a, b);
			}
		}
		return;
	}
	{
		int band;

		for (band = 0; band < VOLUME_SPHERE_BANDS; band++)
		{
			float lat0 = -1.5707963f + 3.1415927f * (float)band / (float)VOLUME_SPHERE_BANDS;
			float lat1 = -1.5707963f + 3.1415927f * (float)(band + 1) / (float)VOLUME_SPHERE_BANDS;

			for (k = 0; k < VOLUME_SPHERE_SEGMENTS; k++)
			{
				float lon0 = 6.2831853f * (float)k / (float)VOLUME_SPHERE_SEGMENTS;
				float lon1 = 6.2831853f * (float)(k + 1) / (float)VOLUME_SPHERE_SEGMENTS;
				float p01[3], p10[3];

				/* (a band's panel from its wider edge's corner: the poles' bands
				are triangles, drawn as their wide edge's panel narrowing nowhere,
				so they're a little over) */
				if (band < VOLUME_SPHERE_BANDS / 2)
				{
					sphere_point(frame, lat1, lon0, corner);
					sphere_point(frame, lat1, lon1, p01);
					sphere_point(frame, lat0, (lon0 + lon1) * 0.5f, p10);
				}
				else
				{
					sphere_point(frame, lat0, lon0, corner);
					sphere_point(frame, lat0, lon1, p01);
					sphere_point(frame, lat1, (lon0 + lon1) * 0.5f, p10);
				}
				a[0] = p01[0] - corner[0];
				a[1] = p01[1] - corner[1];
				a[2] = p01[2] - corner[2];
				/* (towards the other edge, from the side's middle) */
				b[0] = p10[0] - (corner[0] + a[0] * 0.5f);
				b[1] = p10[1] - (corner[1] + a[1] * 0.5f);
				b[2] = p10[2] - (corner[2] + a[2] * 0.5f);
				face(context, corner, a, b);
			}
		}
	}
}

/* the drawing's: what each volume's lines and faces are drawn with */
struct volume_draw_context
{
	void (*draw_line)(float const *from, float const *to, int color, int highlighted);
	void (*draw_face)(float const *corner, float const *side_a, float const *side_b, int color, int highlighted);
	int color;
	int highlighted;
};

static void volume_draw_edge(void *context, float const *from, float const *to)
{
	struct volume_draw_context const *draw = (struct volume_draw_context const *)context;

	draw->draw_line(from, to, draw->color, draw->highlighted);
}

static void volume_draw_face(void *context, float const *corner, float const *side_a, float const *side_b)
{
	struct volume_draw_context const *draw = (struct volume_draw_context const *)context;

	draw->draw_face(corner, side_a, side_b, draw->color, draw->highlighted);
}

void forge_volumes_render(
	void (*draw_line)(float const *from, float const *to, int color, int highlighted),
	void (*draw_face)(float const *corner, float const *side_a, float const *side_b, int color, int highlighted))
{
	int32_t i;

	if (!draw_line)
		return;
	for (i = 0; i < g_forge.live_instance_count; i++)
	{
		struct forge_live_instance const *inst = volume_instance(i);
		struct forge_volume const *volume = &s_volumes[i];
		struct volume_frame frame;
		struct volume_draw_context draw;

		if (!inst)
			continue;
		volume_frame_make(inst, volume, &frame);
		draw.draw_line = draw_line;
		draw.draw_face = draw_face;
		draw.color = volume->effect == _forge_volume_insta_kill || volume->effect == _forge_volume_map_script ?
			_volume_color_kill : volume->effect == _forge_volume_off ? _volume_color_off : _volume_color_damage;
		draw.highlighted = i == g_forge.grabbed_live_index || i == g_forge.hovered_live_index;
		if (draw_face)
			volume_faces(volume, &frame, volume_draw_face, &draw);
		volume_edges(volume, &frame, volume_draw_edge, &draw);
	}
}

/* ---------- picking a volume by its edges */

struct volume_pick_context
{
	float origin[3];
	float direction[3]; /* unit */
	float max_along;
	/* the best edge so far: its closeness (its distance from the view over
	what it may be at that far), and the point on the view's ray */
	float score;
	float point[3];
	int found;
};

/* an edge against the view's ray: the closest two points of the line and
the segment, and how far apart they are */
static void volume_pick_edge(void *context, float const *from, float const *to)
{
	struct volume_pick_context *pick = (struct volume_pick_context *)context;
	float const *d1 = pick->direction;
	float d2[3], r[3];
	float b, c, e, f, denominator, along, t;
	float on_ray[3], on_edge[3], gap[3];
	float distance, tolerance;
	int k;

	for (k = 0; k < 3; k++)
	{
		d2[k] = to[k] - from[k];
		r[k] = pick->origin[k] - from[k];
	}
	b = d1[0] * d2[0] + d1[1] * d2[1] + d1[2] * d2[2];
	c = d1[0] * r[0] + d1[1] * r[1] + d1[2] * r[2];
	e = d2[0] * d2[0] + d2[1] * d2[1] + d2[2] * d2[2];
	f = d2[0] * r[0] + d2[1] * r[1] + d2[2] * r[2];
	if (e < 0.0001f)
		return;
	/* (closest points of the ray O + d1 s, s >= 0, and the segment A + d2 t,
	t in 0..1; the ray's direction is unit) */
	denominator = e - b * b;
	{
		float s = denominator > 0.000001f ? (b * f - c * e) / denominator : -c;

		if (s < 0.0f)
			s = 0.0f;
		t = PIN((b * s + f) / e, 0.0f, 1.0f);
		s = b * t - c;
		along = s > 0.0f ? s : 0.0f;
	}
	if (along < 0.5f || along > pick->max_along)
		return;
	for (k = 0; k < 3; k++)
	{
		on_ray[k] = pick->origin[k] + d1[k] * along;
		on_edge[k] = from[k] + d2[k] * t;
		gap[k] = on_ray[k] - on_edge[k];
	}
	distance = (float)sqrt((double)(gap[0] * gap[0] + gap[1] * gap[1] + gap[2] * gap[2]));
	/* (a little wider the further away it is, as it looks the same) */
	tolerance = 0.2f + 0.025f * along;
	if (distance > tolerance || distance / tolerance >= pick->score)
		return;
	pick->score = distance / tolerance;
	pick->found = 1;
	for (k = 0; k < 3; k++)
		pick->point[k] = on_edge[k];
}

int32_t forge_volumes_pick_edge(float const origin[3], float const direction[3], float max_along, float out_point[3])
{
	struct volume_pick_context pick;
	int32_t best = -1;
	int32_t i;
	int k;

	for (k = 0; k < 3; k++)
	{
		pick.origin[k] = origin[k];
		pick.direction[k] = direction[k];
	}
	pick.max_along = max_along;
	pick.score = 1.0f;
	for (i = 0; i < g_forge.live_instance_count; i++)
	{
		struct forge_live_instance const *inst = volume_instance(i);
		struct volume_frame frame;

		if (!inst)
			continue;
		volume_frame_make(inst, &s_volumes[i], &frame);
		pick.found = 0;
		volume_edges(&s_volumes[i], &frame, volume_pick_edge, &pick);
		if (pick.found)
		{
			best = i;
			for (k = 0; k < 3; k++)
				out_point[k] = pick.point[k];
		}
	}
	return best;
}

int forge_volumes_tag_deals_damage(long definition_index)
{
	struct object_definition const *definition;
	long attachment;

	if (definition_index == NONE)
		return 0;
	definition = (struct object_definition const *)tag_get(OBJECT_DEFINITION_GROUP_TAG, definition_index);
	if (!definition)
		return 0;
	for (attachment = 0; attachment < definition->object.attachments.count; attachment++)
	{
		struct object_attachment_definition const *attached = TAG_BLOCK_GET_ELEMENT(&definition->object.attachments,
			attachment, struct object_attachment_definition);
		struct effect_definition const *effect;
		long event;

		if (!attached || attached->type.group_tag != EFFECT_GROUP_TAG || attached->type.index == NONE)
			continue;
		effect = (struct effect_definition const *)tag_get(EFFECT_GROUP_TAG, attached->type.index);
		for (event = 0; effect && event < effect->events.count; event++)
		{
			struct effect_event_definition const *event_definition =
				TAG_BLOCK_GET_ELEMENT(&effect->events, event, struct effect_event_definition);
			long part;

			for (part = 0; event_definition && part < event_definition->parts.count; part++)
			{
				struct effect_part_definition const *part_definition =
					TAG_BLOCK_GET_ELEMENT(&event_definition->parts, part, struct effect_part_definition);

				if (part_definition && part_definition->reference.group_tag == DAMAGE_EFFECT_GROUP_TAG)
					return 1;
			}
		}
	}
	return 0;
}

int forge_volumes_effect_damage_blocked(long object_index)
{
	static int32_t s_last_live = -1;
	int32_t i;

	if (object_index == NONE || !g_forge.initialized)
		return 0;
	/* (the emitter asked of last: its effects' parts come in runs) */
	if (s_last_live >= 0 && s_last_live < g_forge.live_instance_count &&
		g_forge.live_instances[s_last_live].active && g_forge.live_instances[s_last_live].object_index == object_index)
	{
		return g_forge.live_instances[s_last_live].no_damage;
	}
	for (i = 0; i < g_forge.live_instance_count; i++)
	{
		struct forge_live_instance const *inst = &g_forge.live_instances[i];

		if (inst->active && inst->no_damage && inst->object_index == object_index)
		{
			s_last_live = i;
			return 1;
		}
	}
	return 0;
}
