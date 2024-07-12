/decl/flooring/tiling
	name = "floor"
	desc = "A solid, heavy set of flooring plates."
	icon = 'icons/turf/flooring/tiles.dmi'
	icon_base = "tiled"
	color = null
	damage_temperature = T0C+1400
	flags = TURF_REMOVE_CROWBAR | TURF_CAN_BREAK | TURF_CAN_BURN
	build_type = /obj/item/stack/tile/floor
	can_paint = 1
	footstep_type = /decl/footsteps/tiles

/decl/flooring/tiling/mono
	icon_base = "monotile"
	color = null
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
	build_type = null

/decl/flooring/tiling/freezer
	desc = "Don't slip."
	icon_base = "freezer"
	color = null
	flags = TURF_REMOVE_CROWBAR
	build_type = /obj/item/stack/tile/floor_freezer

/decl/flooring/tiling/tech
	icon = 'icons/turf/flooring/techfloor.dmi'
	icon_base = "techfloor_gray"
	build_type = /obj/item/stack/tile/techgrey
	color = null

/decl/flooring/tiling/tech/grid
	icon_base = "techfloor_grid"
	build_type = /obj/item/stack/tile/techgrid

//

/decl/flooring/tiling/new_tile
	icon_base = "tile_full"
	color = null
	build_type = /obj/item/stack/tile/gray

/decl/flooring/tiling/new_tile/cargo_one
	icon_base = "cargo_one_full"
	build_type = /obj/item/stack/tile/mono/gray

/decl/flooring/tiling/new_tile2
	icon_base = "tile_full"
	color = COLOR_GRAY40
	build_type = /obj/item/stack/tile/gray

// /decl/flooring/tiling/new_tile2/cargo_one2
//	icon_base = "cargo_one_full"
//	build_type = /obj/item/stack/tile/mono/gray

//

/decl/flooring/tiling/new_tile/kafel
	icon_base = "kafel_full"
	build_type = null

/decl/flooring/tiling/stone
	icon_base = "stone"
	build_type = /obj/item/stack/tile/stone

/decl/flooring/tiling/new_tile/techmaint
	icon_base = "techmaint"
	build_type = /obj/item/stack/tile/techmaint

/decl/flooring/tiling/new_tile/monofloor
	icon_base = "monofloor"
	color = null

/decl/flooring/tiling/new_tile/steel_grid
	icon_base = "grid"
	color = COLOR_GUNMETAL
	build_type = /obj/item/stack/tile/grid

/decl/flooring/tiling/new_tile/steel_ridged
	icon_base = "ridged"
	build_type = /obj/item/stack/tile/ridge

/decl/flooring/tiling/new_tile/steel_grid_2
	icon_base = "steel_grid"
	build_type = /obj/item/stack/tile/floor

/decl/flooring/tiling/new_tile/sad_floor
	icon_base = "sad_floor"
	build_type = /obj/item/stack/tile/sad_floor

// SAD FLOORS COLORED

/decl/flooring/tiling/new_tile/sad_floor_red_1
	icon_base = "sad_floor_red_1"
	build_type = /obj/item/stack/tile/sad_floor_red_1

/decl/flooring/tiling/new_tile/sad_floor_red_2
	icon_base = "sad_floor_red_2"
	build_type = /obj/item/stack/tile/sad_floor_red_2

/decl/flooring/tiling/new_tile/sad_floor_green_1
	icon_base = "sad_floor_green_1"
	build_type = /obj/item/stack/tile/sad_floor_green_1

/decl/flooring/tiling/new_tile/sad_floor_green_2
	icon_base = "sad_floor_green_2"
	build_type = /obj/item/stack/tile/sad_floor_green_2

/decl/flooring/tiling/new_tile/sad_floor_blue_1
	icon_base = "sad_floor_blue_1"
	build_type = /obj/item/stack/tile/sad_floor_blue_1

/decl/flooring/tiling/new_tile/sad_floor_blue_2
	icon_base = "sad_floor_blue_2"
	build_type = /obj/item/stack/tile/sad_floor_blue_2

/decl/flooring/tiling/new_tile/sad_floor_pink_1
	icon_base = "sad_floor_pink_1"
	build_type = /obj/item/stack/tile/sad_floor_pink_1

/decl/flooring/tiling/new_tile/sad_floor_pink_2
	icon_base = "sad_floor_pink_2"
	build_type = /obj/item/stack/tile/sad_floor_pink_2

/decl/flooring/tiling/new_tile/sad_floor_purple_1
	icon_base = "sad_floor_purple_1"
	build_type = /obj/item/stack/tile/sad_floor_purple_1

/decl/flooring/tiling/new_tile/sad_floor_purple_2
	icon_base = "sad_floor_purple_2"
	build_type = /obj/item/stack/tile/sad_floor_purple_2

/decl/flooring/tiling/new_tile/sad_floor_orange_1
	icon_base = "sad_floor_orange_1"
	build_type = /obj/item/stack/tile/sad_floor_orange_1

/decl/flooring/tiling/new_tile/sad_floor_orange_2
	icon_base = "sad_floor_orange_2"
	build_type = /obj/item/stack/tile/sad_floor_orange_2

/decl/flooring/tiling/new_tile/sad_floor_biege_1
	icon_base = "sad_floor_biege_1"
	build_type = /obj/item/stack/tile/sad_floor_biege_1

/decl/flooring/tiling/new_tile/sad_floor_biege_2
	icon_base = "sad_floor_biege_2"
	build_type = /obj/item/stack/tile/sad_floor_biege_2
// SAD FLOORS COLORED

/decl/flooring/tiling/new_tile_green_1
	icon_base = "tile_full_green_2"
	color = null
	build_type = /obj/item/stack/tile/tile_full_green_1

/decl/flooring/tiling/new_tile_green_2
	icon_base = "tile_full_green_2"
	color = null
	build_type = /obj/item/stack/tile/tile_full_green_2

/decl/flooring/tiling/new_tile_lime_1
	icon_base = "tile_full_lime_1"
	color = null
	build_type = /obj/item/stack/tile/tile_full_lime_1

/decl/flooring/tiling/new_tile_lime_2
	icon_base = "tile_full_lime_2"
	color = null
	build_type = /obj/item/stack/tile/tile_full_lime_2