/*
MCC_TAG_PREVIEW.C

(port) The turning preview of an MCC map's tag (tag_preview.c), read from
the map's file without loading it: Firefight's MAP CONTENT list of an MCC
map's weapons, vehicles and AI (menu_functions.c's map_content_tags_*), and
later Forge's and the Tag Injector's.

mcc_tag_preview_open reads the map's tags as its file has them
(mcc_cache_raw_open: unconverted, at no linked address, each address found
with mcc_cache_raw_pointer); mcc_tag_preview_mesh makes the mesh of a tag of
it, by group and name, as tag_injector.c's preview_mesh_build makes a Custom
Edition map's: an actor variant's unit, an object's model; of each region
its first permutation an object may be given, at its most detailed
geometry; its opaque parts, else all. MCC's mod2 parts are laid out as Halo
PC's gbxmodel's (0x84 bytes; 68-byte vertices in the map's model data, the
strips after the vertices: mcc_geometry.c).

First version: no textures (each triangle grey, lit and rimmed as
tag_preview.c draws a part without a material), no needs list.
*/

#include "cseries.h"
#include "ai/actor_definitions.h"
#include "models/model_definitions.h"
#include "objects/object_definitions.h"
#include "tag_files/tag_groups.h"

#include "mcc_cache.h"
#include "mcc_tag_preview.h"
#include "tag_injector.h"

#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define MCC_PREVIEW_MAXIMUM_VERTICES 16384
#define MCC_PREVIEW_MAXIMUM_TRIANGLES 24576
#define MCC_PREVIEW_MAXIMUM_STRIP_TRIANGLES 0x10000
#define MCC_PREVIEW_MAXIMUM_REGIONS 32
#define MCC_PREVIEW_DETAIL_LEVELS 5
#define MCC_PREVIEW_MAXIMUM_COORDINATE 1000.0f
#define MCC_PREVIEW_MAXIMUM_MAP_SCALE 1000.0f

#define MCC_GEOMETRY_BYTES 0x30
#define MCC_GEOMETRY_PARTS_OFFSET 0x24
#define MCC_PART_BYTES 0x84
#define MCC_PART_SHADER_INDEX_OFFSET 0x04
#define MCC_PART_STRIP_TRIANGLE_COUNT_OFFSET 0x48
#define MCC_PART_STRIP_OFFSET_OFFSET 0x4C
#define MCC_PART_VERTEX_COUNT_OFFSET 0x58
#define MCC_PART_VERTEX_OFFSET_OFFSET 0x64
#define MCC_VERTEX_BYTES 0x44
#define MCC_VERTEX_NORMAL_OFFSET 0x0C
#define MCC_VERTEX_TEXCOORD_OFFSET 0x30
/* a model's shader reference (16 bytes) and the shader groups whose parts
are opaque: a model's, an environment's */
#define MCC_MODEL_SHADER_BYTES 0x20
#define MCC_SHADER_MODEL_GROUP 'soso'
#define MCC_SHADER_ENVIRONMENT_GROUP 'senv'

static struct
{
	struct mcc_raw_map *map;
	char name[128];
} mcc_preview;

static uint32_t mcc_preview_u32(void const *p)
{
	uint32_t value;

	memcpy(&value, p, sizeof(value));
	return value;
}

boolean mcc_tag_preview_open(char const *level_name)
{
	if (mcc_preview.map && level_name && !strcmp(mcc_preview.name, level_name))
		return TRUE;
	mcc_tag_preview_close();
	if (!level_name || !mcc_level_name(level_name))
		return FALSE;
	mcc_preview.map = mcc_cache_raw_open(level_name);
	if (!mcc_preview.map)
		return FALSE;
	snprintf(mcc_preview.name, sizeof(mcc_preview.name), "%s", level_name);
	return TRUE;
}

void mcc_tag_preview_close(void)
{
	if (mcc_preview.map)
		mcc_cache_raw_close(mcc_preview.map);
	mcc_preview.map = NULL;
	mcc_preview.name[0] = 0;
}

boolean mcc_tag_preview_opened(void)
{
	return mcc_preview.map != NULL;
}

/* a block's elements, NULL for none or one outside the tags */
static byte *mcc_preview_block(struct tag_block const *block, unsigned long stride)
{
	if (block->count <= 0 || (unsigned long)block->count > 0x100000UL / MAX(stride, 1))
		return NULL;
	return mcc_cache_raw_pointer(mcc_preview.map, (unsigned long)(uintptr_t)block->address,
		(unsigned long)block->count * stride);
}

/* the root of the tag a handle names, of at least `bytes`, and its group */
static byte *mcc_preview_tag_of_handle(long handle, unsigned long bytes, unsigned long *group)
{
	unsigned char *entry;

	if (handle == NONE)
		return NULL;
	entry = mcc_cache_raw_entry(mcc_preview.map, (unsigned long)(handle & 0xFFFF));
	if (!entry || (long)mcc_preview_u32(entry + 12) != handle)
		return NULL;
	*group = mcc_preview_u32(entry);
	return mcc_cache_raw_pointer(mcc_preview.map, mcc_preview_u32(entry + 20), bytes);
}

/* the root of the tag of a group and name */
static byte *mcc_preview_tag_named(unsigned long group, char const *name, unsigned long bytes)
{
	unsigned long count = mcc_cache_raw_tag_count(mcc_preview.map);
	unsigned long index;

	for (index = 0; index < count; index++)
	{
		unsigned char *entry = mcc_cache_raw_entry(mcc_preview.map, index);
		char const *tag_name;

		if (!entry || mcc_preview_u32(entry) != group)
			continue;
		tag_name = mcc_cache_raw_pointer(mcc_preview.map, mcc_preview_u32(entry + 16), 1);
		if (tag_name && !_stricmp(tag_name, name))
			return mcc_cache_raw_pointer(mcc_preview.map, mcc_preview_u32(entry + 20), bytes);
	}
	return NULL;
}

static boolean mcc_preview_shader_opaque(struct model const *model, short shader_index)
{
	byte *shaders = mcc_preview_block(&model->shaders, MCC_MODEL_SHADER_BYTES);
	unsigned long group = 0;
	struct tag_reference const *reference;

	if (!shaders || shader_index < 0 || shader_index >= model->shaders.count)
		return FALSE;
	reference = (struct tag_reference const *)(shaders + shader_index * MCC_MODEL_SHADER_BYTES);
	if (!mcc_preview_tag_of_handle(reference->index, 4, &group))
		return FALSE;
	return group == MCC_SHADER_MODEL_GROUP || group == MCC_SHADER_ENVIRONMENT_GROUP;
}

static void mcc_preview_part(struct model const *model, byte const *part, boolean opaque_only,
	struct tag_injector_mesh *mesh)
{
	long strip_triangle_count = (long)mcc_preview_u32(part + MCC_PART_STRIP_TRIANGLE_COUNT_OFFSET);
	long vertex_count = (long)mcc_preview_u32(part + MCC_PART_VERTEX_COUNT_OFFSET);
	long first_vertex = mesh->vertex_count;
	long index_count = strip_triangle_count + 2;
	short shader_index;
	byte *vertices;
	unsigned short *strip;
	long index;

	memcpy(&shader_index, part + MCC_PART_SHADER_INDEX_OFFSET, sizeof(shader_index));
	if ((opaque_only && !mcc_preview_shader_opaque(model, shader_index)) ||
		vertex_count <= 0 || vertex_count > MCC_PREVIEW_MAXIMUM_VERTICES - mesh->vertex_count ||
		strip_triangle_count <= 0 || strip_triangle_count > MCC_PREVIEW_MAXIMUM_STRIP_TRIANGLES)
	{
		return;
	}
	vertices = malloc((unsigned long)vertex_count * MCC_VERTEX_BYTES);
	strip = malloc((unsigned long)index_count * sizeof(unsigned short));
	if (vertices && strip &&
		mcc_cache_raw_model_read(mcc_preview.map, FALSE, mcc_preview_u32(part + MCC_PART_VERTEX_OFFSET_OFFSET),
			(unsigned long)vertex_count * MCC_VERTEX_BYTES, vertices) &&
		mcc_cache_raw_model_read(mcc_preview.map, TRUE, mcc_preview_u32(part + MCC_PART_STRIP_OFFSET_OFFSET),
			(unsigned long)index_count * sizeof(unsigned short), strip))
	{
		for (index = 0; index < vertex_count; index++)
		{
			byte const *vertex = vertices + index * MCC_VERTEX_BYTES;
			float *position = mesh->positions[first_vertex + index];
			float *normal = mesh->normals[first_vertex + index];
			float *texcoord = mesh->texcoords[first_vertex + index];
			short axis;

			memcpy(position, vertex, 3 * sizeof(float));
			memcpy(normal, vertex + MCC_VERTEX_NORMAL_OFFSET, 3 * sizeof(float));
			memcpy(texcoord, vertex + MCC_VERTEX_TEXCOORD_OFFSET, 2 * sizeof(float));
			/* (a NaN fails every comparison) */
			for (axis = 0; axis < 3; axis++)
			{
				if (!(position[axis] >= -MCC_PREVIEW_MAXIMUM_COORDINATE && position[axis] <= MCC_PREVIEW_MAXIMUM_COORDINATE))
					position[axis] = 0.0f;
				if (!(normal[axis] >= -2.0f && normal[axis] <= 2.0f))
					normal[axis] = 0.0f;
			}
			for (axis = 0; axis < 2; axis++)
			{
				if (!(texcoord[axis] >= -MCC_PREVIEW_MAXIMUM_COORDINATE && texcoord[axis] <= MCC_PREVIEW_MAXIMUM_COORDINATE))
					texcoord[axis] = 0.0f;
			}
		}
		mesh->vertex_count += vertex_count;
		for (index = 0; index + 2 < index_count && mesh->triangle_count < MCC_PREVIEW_MAXIMUM_TRIANGLES; index++)
		{
			unsigned short a = strip[index];
			unsigned short b = strip[index + 1];
			unsigned short c = strip[index + 2];
			unsigned short *out = mesh->triangles[mesh->triangle_count];

			if (a == b || b == c || a == c || a >= vertex_count || b >= vertex_count || c >= vertex_count)
				continue;
			/* (a strip's odd triangles turn the other way) */
			if (index & 1)
			{
				unsigned short swap = b;

				b = c;
				c = swap;
			}
			out[0] = (unsigned short)(first_vertex + a);
			out[1] = (unsigned short)(first_vertex + b);
			out[2] = (unsigned short)(first_vertex + c);
			mesh->triangle_materials[mesh->triangle_count] = NONE;
			mesh->triangle_count++;
		}
	}
	if (vertices)
		free(vertices);
	if (strip)
		free(strip);
}

boolean mcc_tag_preview_mesh(unsigned long group, char const *tag_name, struct tag_injector_mesh *mesh)
{
	byte *root;
	unsigned long root_group = group;
	struct model const *model;
	unsigned long model_group = 0;
	short pass;

	memset(mesh, 0, sizeof(*mesh));
	if (!mcc_preview.map || !tag_name)
		return FALSE;
	root = mcc_preview_tag_named(group, tag_name, sizeof(struct object_definition));
	if (root && group == ACTOR_VARIANT_DEFINITION_TAG)
	{
		struct actor_variant_definition const *variant = (struct actor_variant_definition const *)root;

		root = mcc_preview_tag_of_handle(variant->unit_reference.index, sizeof(struct object_definition), &root_group);
	}
	if (!root)
		return FALSE;
	model = (struct model const *)mcc_preview_tag_of_handle(((struct object_definition const *)root)->object.model.index,
		sizeof(struct model), &model_group);
	if (!model || model_group != 'mod2' || model->regions.count <= 0 || model->geometries.count <= 0)
		return FALSE;
	mesh->positions = malloc(MCC_PREVIEW_MAXIMUM_VERTICES * sizeof(*mesh->positions));
	mesh->normals = malloc(MCC_PREVIEW_MAXIMUM_VERTICES * sizeof(*mesh->normals));
	mesh->texcoords = malloc(MCC_PREVIEW_MAXIMUM_VERTICES * sizeof(*mesh->texcoords));
	mesh->triangles = malloc(MCC_PREVIEW_MAXIMUM_TRIANGLES * sizeof(*mesh->triangles));
	mesh->triangle_materials = malloc(MCC_PREVIEW_MAXIMUM_TRIANGLES * sizeof(*mesh->triangle_materials));
	if (!mesh->positions || !mesh->normals || !mesh->texcoords || !mesh->triangles || !mesh->triangle_materials)
	{
		tag_injector_mesh_free(mesh);
		return FALSE;
	}
	/* (its opaque parts, else all of them) */
	for (pass = 0; pass < 2 && !mesh->triangle_count; pass++)
	{
		byte *regions = mcc_preview_block(&model->regions, sizeof(struct model_region));
		byte *geometries = mcc_preview_block(&model->geometries, MCC_GEOMETRY_BYTES);
		short region_index;

		mesh->vertex_count = 0;
		if (!regions || !geometries)
			break;
		for (region_index = 0; region_index < MIN(model->regions.count, MCC_PREVIEW_MAXIMUM_REGIONS); region_index++)
		{
			struct model_region const *region = (struct model_region const *)(regions +
				region_index * sizeof(struct model_region));
			byte *permutations = mcc_preview_block(&region->permutations, sizeof(struct model_region_permutation));
			struct model_region_permutation const *permutation = NULL;
			short permutation_index;
			short geometry_index = NONE;
			short level;
			struct tag_block const *parts_block;
			byte *parts;
			long part_index;

			for (permutation_index = 0; permutations && permutation_index < region->permutations.count; permutation_index++)
			{
				struct model_region_permutation const *candidate = (struct model_region_permutation const *)(permutations +
					permutation_index * sizeof(struct model_region_permutation));

				if (!permutation)
					permutation = candidate;
				if (!TEST_FLAG(candidate->flags, _model_region_permutation_cannot_be_chosen_randomly_bit))
				{
					permutation = candidate;
					break;
				}
			}
			if (!permutation)
				continue;
			for (level = MCC_PREVIEW_DETAIL_LEVELS - 1;
				level >= 0 && (geometry_index < 0 || geometry_index >= model->geometries.count); level--)
			{
				geometry_index = permutation->geometry_indices[level];
			}
			if (geometry_index < 0 || geometry_index >= model->geometries.count)
				continue;
			parts_block = (struct tag_block const *)(geometries + geometry_index * MCC_GEOMETRY_BYTES +
				MCC_GEOMETRY_PARTS_OFFSET);
			parts = mcc_preview_block(parts_block, MCC_PART_BYTES);
			for (part_index = 0; parts && part_index < parts_block->count; part_index++)
				mcc_preview_part(model, parts + part_index * MCC_PART_BYTES, pass == 0, mesh);
		}
	}
	if (!mesh->triangle_count)
	{
		tag_injector_mesh_free(mesh);
		return FALSE;
	}
	return TRUE;
}
