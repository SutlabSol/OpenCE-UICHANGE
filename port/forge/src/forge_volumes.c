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

void forge_volumes_render(void (*draw_line)(float const *from, float const *to, int color, int highlighted))
{
	enum
	{
		RING_SEGMENTS = 20
	};
	int32_t i;

	if (!draw_line)
		return;
	for (i = 0; i < g_forge.live_instance_count; i++)
	{
		struct forge_live_instance const *inst = volume_instance(i);
		struct forge_volume const *volume = &s_volumes[i];
		real_vector3d forward, left, up;
		float hx, hy, hz;
		int color, hi;
		int k;

#define VOLUME_POINT(out, a, b, c) \
	do { \
		(out)[0] = inst->x + forward.i * (a) + left.i * (b) + up.i * (c); \
		(out)[1] = inst->y + forward.j * (a) + left.j * (b) + up.j * (c); \
		(out)[2] = inst->z + forward.k * (a) + left.k * (b) + up.k * (c); \
	} while (0)

		if (!inst)
			continue;
		euler_basis(inst->yaw, inst->pitch, inst->roll, &forward, &left, &up);
		hx = volume->size[0] * 0.5f;
		hy = volume->size[1] * 0.5f;
		hz = volume->size[2] * 0.5f;
		color = volume->effect == _forge_volume_insta_kill || volume->effect == _forge_volume_map_script ? _volume_color_kill :
			volume->effect == _forge_volume_off ? _volume_color_off : _volume_color_damage;
		hi = i == g_forge.grabbed_live_index || i == g_forge.hovered_live_index;
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

				VOLUME_POINT(from, hx * a[0], hy * a[1], hz * a[2]);
				VOLUME_POINT(to, hx * b[0], hy * b[1], hz * b[2]);
				draw_line(from, to, color, hi);
			}
		}
		else
		{
			/* (a cylinder: its two rings and four sides; a sphere: its three
			great rings) */
			int rings = volume->shape == _forge_volume_cylinder ? 2 : 3;
			int ring;

			for (ring = 0; ring < rings; ring++)
			{
				for (k = 0; k < RING_SEGMENTS; k++)
				{
					float a0 = (float)k * 6.2831853f / (float)RING_SEGMENTS;
					float a1 = (float)(k + 1) * 6.2831853f / (float)RING_SEGMENTS;
					float from[3], to[3];

					if (volume->shape == _forge_volume_cylinder)
					{
						float h = ring == 0 ? -hz : hz;

						VOLUME_POINT(from, hx * (float)cos(a0), hy * (float)sin(a0), h);
						VOLUME_POINT(to, hx * (float)cos(a1), hy * (float)sin(a1), h);
					}
					else if (ring == 0)
					{
						VOLUME_POINT(from, hx * (float)cos(a0), hy * (float)sin(a0), 0.0f);
						VOLUME_POINT(to, hx * (float)cos(a1), hy * (float)sin(a1), 0.0f);
					}
					else if (ring == 1)
					{
						VOLUME_POINT(from, hx * (float)cos(a0), 0.0f, hz * (float)sin(a0));
						VOLUME_POINT(to, hx * (float)cos(a1), 0.0f, hz * (float)sin(a1));
					}
					else
					{
						VOLUME_POINT(from, 0.0f, hy * (float)cos(a0), hz * (float)sin(a0));
						VOLUME_POINT(to, 0.0f, hy * (float)cos(a1), hz * (float)sin(a1));
					}
					draw_line(from, to, color, hi);
				}
			}
			if (volume->shape == _forge_volume_cylinder)
			{
				for (k = 0; k < 4; k++)
				{
					float angle = (float)k * 1.5707963f;
					float from[3], to[3];

					VOLUME_POINT(from, hx * (float)cos(angle), hy * (float)sin(angle), -hz);
					VOLUME_POINT(to, hx * (float)cos(angle), hy * (float)sin(angle), hz);
					draw_line(from, to, color, hi);
				}
			}
		}
#undef VOLUME_POINT
	}
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
