/decl/flooring/tiling
	name               = "floor"
	desc               = "A solid, heavy set of flooring plates."
	icon               = 'icons/turf/flooring/tiles.dmi'
	icon_base          = "tiled"
	descriptor         = "tiles"
	damage_temperature = T0C+1400
	flooring_flags     = TURF_REMOVE_CROWBAR
	build_type         = /obj/item/stack/tile/floor
	can_paint          = 1
	footstep_type      = /decl/footsteps/tiles
	force_material     = /decl/material/solid/metal/steel
	wall_smooth        = SMOOTH_ALL
	space_smooth       = SMOOTH_ALL
	constructed        = TRUE

	burned_states  = list(
		"burned0",
		"burned1"
	)
	broken_states  = list(
		"broken0",
		"broken1",
		"broken2",
		"broken3",
		"broken4"
	)

/decl/flooring/tiling/mono
	icon_base = "monotile"
	color = COLOR_WHITE
	build_type = /obj/item/stack/tile/mono

/decl/flooring/tiling/mono/dark
	color = COLOR_DARK_GRAY
	build_type = /obj/item/stack/tile/mono/dark

/decl/flooring/tiling/mono/gray
	icon_base = "catwalk_platedgray"
	color = COLOR_GRAY
	build_type = /obj/item/stack/tile/mono/gray

/decl/flooring/tiling/mono/white
	icon_base = "monotile_light"
	color = COLOR_OFF_WHITE
	build_type = /obj/item/stack/tile/mono/white

/decl/flooring/tiling/white
	icon_base = "tiled_light"
	desc = "How sterile."
	color = COLOR_OFF_WHITE
	build_type = /obj/item/stack/tile/floor_white

/decl/flooring/tiling/dark
	desc = "How ominous."
	color = COLOR_DARK_GRAY
	build_type = /obj/item/stack/tile/floor_dark

/decl/flooring/tiling/dark/mono
	icon_base = "monotile"
	build_type = COLOR_WHITE

/decl/flooring/tiling/freezer
	desc = "Don't slip."
	icon_base = "freezer"
	color = COLOR_WHITE
	flooring_flags = TURF_REMOVE_CROWBAR
	build_type = /obj/item/stack/tile/floor_freezer

/decl/flooring/tiling/tech
	icon = 'icons/turf/flooring/techfloor.dmi'
	icon_base = "techfloor_gray"
	build_type = /obj/item/stack/tile/techgrey
	color = COLOR_WHITE

/decl/flooring/tiling/tech/grid
	icon_base = "techfloor_grid"
	build_type = /obj/item/stack/tile/techgrid

//

/decl/flooring/tiling/new_tile
	icon_base = "tile_full"
	color = COLOR_WHITE
	build_type = /obj/item/stack/tile/gray

/decl/flooring/tiling/new_tile/cargo_one
	icon_base = "cargo_one_full"
	build_type = /obj/item/stack/tile/mono/gray
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile2
	icon_base = "tile_full"
	color = COLOR_GRAY40
	build_type = /obj/item/stack/tile/gray

// /decl/flooring/tiling/new_tile2/cargo_one2
//	icon_base = "cargo_one_full"
//	build_type = /obj/item/stack/tile/mono/gray


/decl/flooring/tiling/new_tile/monofloor2
	icon_base = "monofloor2"
	build_type = /obj/item/stack/tile/mono/gray
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile/monofloor3
	icon_base = "monofloor3"
	build_type = /obj/item/stack/tile/mono/gray
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile/doted_floor
	icon_base = "doted_floor"
	build_type = /obj/item/stack/tile/doted_floor
	color = COLOR_WHITE

//

/decl/flooring/tiling/new_tile/kafel
	icon_base = "kafel_full"
	build_type = COLOR_WHITE
	color = COLOR_WHITE

/decl/flooring/tiling/stone
	icon_base = "stone"
	build_type = /obj/item/stack/tile/stone

/decl/flooring/tiling/new_tile/techmaint
	icon_base = "techmaint"
	build_type = /obj/item/stack/tile/techmaint
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile/monofloor
	icon_base = "monofloor"
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile/steel_grid
	icon_base = "grid"
	color = COLOR_GUNMETAL
	build_type = /obj/item/stack/tile/grid
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile/steel_ridged
	icon_base = "ridged"
	build_type = /obj/item/stack/tile/ridge
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile/steel_grid_2
	icon_base = "steel_grid"
	build_type = /obj/item/stack/tile/floor
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile/sad_floor
	icon_base = "sad_floor"
	build_type = /obj/item/stack/tile/sad_floor
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile/sad_floor_mono
	icon_base = "sad_floor_mono"
	build_type = /obj/item/stack/tile/mono/gray
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile/sad_floor_ridged
	icon_base = "sad_floor_ridged"
	build_type = /obj/item/stack/tile/ridge
	color = COLOR_WHITE

// SAD FLOORS colorED

/decl/flooring/tiling/new_tile/sad_floor_red_1
	icon_base = "sad_floor_red_1"
	build_type = /obj/item/stack/tile/sad_floor_red_1
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile/sad_floor_red_2
	icon_base = "sad_floor_red_2"
	build_type = /obj/item/stack/tile/sad_floor_red_2
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile/sad_floor_green_1
	icon_base = "sad_floor_green_1"
	build_type = /obj/item/stack/tile/sad_floor_green_1
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile/sad_floor_green_2
	icon_base = "sad_floor_green_2"
	build_type = /obj/item/stack/tile/sad_floor_green_2
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile/sad_floor_blue_1
	icon_base = "sad_floor_blue_1"
	build_type = /obj/item/stack/tile/sad_floor_blue_1
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile/sad_floor_blue_2
	icon_base = "sad_floor_blue_2"
	build_type = /obj/item/stack/tile/sad_floor_blue_2
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile/sad_floor_pink_1
	icon_base = "sad_floor_pink_1"
	build_type = /obj/item/stack/tile/sad_floor_pink_1
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile/sad_floor_pink_2
	icon_base = "sad_floor_pink_2"
	build_type = /obj/item/stack/tile/sad_floor_pink_2
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile/sad_floor_purple_1
	icon_base = "sad_floor_purple_1"
	build_type = /obj/item/stack/tile/sad_floor_purple_1
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile/sad_floor_purple_2
	icon_base = "sad_floor_purple_2"
	build_type = /obj/item/stack/tile/sad_floor_purple_2
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile/sad_floor_orange_1
	icon_base = "sad_floor_orange_1"
	build_type = /obj/item/stack/tile/sad_floor_orange_1
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile/sad_floor_orange_2
	icon_base = "sad_floor_orange_2"
	build_type = /obj/item/stack/tile/sad_floor_orange_2
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile/sad_floor_biege_1
	icon_base = "sad_floor_biege_1"
	build_type = /obj/item/stack/tile/sad_floor_biege_1
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile/sad_floor_biege_2
	icon_base = "sad_floor_biege_2"
	build_type = /obj/item/stack/tile/sad_floor_biege_2
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile/sad_floor_yellow_1
	icon_base = "sad_floor_yellow_1"
	build_type = /obj/item/stack/tile/sad_floor_yellow_1
	color = COLOR_WHITE

/decl/flooring/tiling/new_tile/sad_floor_yellow_2
	icon_base = "sad_floor_yellow_2"
	build_type = /obj/item/stack/tile/sad_floor_yellow_2
	color = COLOR_WHITE

// SAD FLOORS colorED

/decl/flooring/tiling/new_tile_green_1
	icon_base = "tile_full_green_2"
	color = COLOR_WHITE
	build_type = /obj/item/stack/tile/tile_full_green_1

/decl/flooring/tiling/new_tile_green_2
	icon_base = "tile_full_green_2"
	color = COLOR_WHITE
	build_type = /obj/item/stack/tile/tile_full_green_2

/decl/flooring/tiling/new_tile_lime_1
	icon_base = "tile_full_lime_1"
	color = COLOR_WHITE
	build_type = /obj/item/stack/tile/tile_full_lime_1

/decl/flooring/tiling/new_tile_lime_2
	icon_base = "tile_full_lime_2"
	color = COLOR_WHITE
	build_type = /obj/item/stack/tile/tile_full_lime_2