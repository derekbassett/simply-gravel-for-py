-- Some variables to reference base tiles
local base_dirt = data.raw["tile"]["dry-dirt"]
local base_stone_path = data.raw["tile"]["stone-path"]

-- Sort out the layers
local tile_layer = {
	gravel = 60,
	stone = 61,
	concrete = 62,
	paint = 63,
	-- 64 transition layer
	refined = 65,
	refined_paint = 66,
	-- 67 transition layer
	grid = 68,
	wood = 69
}

data:extend(
	{
		{
			type = "tile",
			name = "sgfp-gravel",
			needs_correction = false,
			minable = {mining_time = 0.1, result = "gravel"},
			mined_sound = {filename = "__core__/sound/axe-mining-ore-3.ogg"},
			collision_mask = {layers = {ground_tile = true}},
			walking_speed_modifier = 1.1,
			-- Set explicitly (0 = the default) so Cleaned Concrete detects this tile and raises it to 1.
			decorative_removal_probability = 0,
			layer = tile_layer.gravel,
			variants = {
				main = {
					{
						picture = "__simply-gravel-for-py__/graphics/stone1.png",
						count = 16,
						size = 1
					},
					{
						picture = "__simply-gravel-for-py__/graphics/stone2.png",
						count = 4,
						size = 2,
						probability = 0.39
					},
					{
						picture = "__simply-gravel-for-py__/graphics/stone4.png",
						count = 4,
						size = 4,
						probability = 1
					}
					},
					transition = {
						overlay_layout = {
							inner_corner = {
								spritesheet = "__simply-gravel-for-py__/graphics/stone-inner-corner.png",
								count = 8
							},
							outer_corner = {
								spritesheet = "__simply-gravel-for-py__/graphics/stone-outer-corner.png",
								count = 1
							},
							side = {
								spritesheet = "__simply-gravel-for-py__/graphics/stone-side.png",
								count = 8
							},
							u_transition = {
								spritesheet = "__simply-gravel-for-py__/graphics/stone-u.png",
								count = 8
							},
							o_transition = {
								spritesheet = "__simply-gravel-for-py__/graphics/stone-o.png",
								count = 1
							}
						}
					}
				},
			walking_sound = base_dirt.walking_sound,
			map_color = {r = 0.57, g = 0.57, b = 0.57}
		}
	}
)

-- keep stone path drawn above gravel
base_stone_path.layer = tile_layer.stone
