-- Make Pyanodon's gravel item placeable as the gravel tile.
-- Done in data-updates so it applies after Py has finished defining its items.
local py_gravel_item = data.raw["item"]["gravel"]

if py_gravel_item then
	py_gravel_item.place_as_tile = {
		result = "sgfp-gravel",
		condition_size = 2,
		condition = {layers = {water_tile = true}}
	}
end
