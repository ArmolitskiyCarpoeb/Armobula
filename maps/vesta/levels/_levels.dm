/obj/abstract/map_data/vesta
	height = 1

/datum/level_data/player_level/vesta
	use_global_exterior_ambience = FALSE
	base_area = null
	abstract_type = /datum/level_data/player_level/vesta
//	ambient_light_level = 1
//	ambient_light_color = "#f3e6ca"
	strata = /decl/strata/acheron
	level_generators = list(
		/datum/random_map/automata/cave_system/acheron,
		/datum/random_map/noise/ore/rich,
	)
	base_turf = /turf/floor/rock/cave
	exterior_atmosphere = list(
		/decl/material/gas/oxygen =   MOLES_O2STANDARD,
		/decl/material/gas/nitrogen = MOLES_N2STANDARD
	)
//	daycycle_type = /datum/daycycle/shaded_hills
//	daycycle_id = "daycycle_shaded_hills"
	template_edge_padding = 0
	var/submap_budget   = 0
	var/submap_category = null
	var/submap_area
	var/list/mobs_to_spawn = list()

/datum/level_data/player_level/vesta/get_subtemplate_areas(template_category, blacklist, whitelist)
    return submap_area ? (islist(submap_area) ? submap_area : list(submap_area)) : null

/datum/level_data/player_level/vesta/get_subtemplate_budget()
    return submap_budget

/datum/level_data/player_level/vesta/get_subtemplate_category()
    return submap_category

/obj/abstract/level_data_spawner/vesta
	level_data_type = /datum/level_data/player_level/vesta

//datum/daycycle/shaded_hills
//	cycle_duration = 2 HOURS // 1 hour of daylight, 1 hour of night

/datum/level_data/player_level/vesta/after_generate_level()
	. = ..()
	if(length(mobs_to_spawn))
		for(var/list/mob_category in mobs_to_spawn)
			var/list/mob_types = mob_category[1]
			var/mob_turf  = mob_category[2]
			var/mob_count = mob_category[3]
			var/sanity = 1000
			while(mob_count && sanity)
				sanity--
				var/turf/place_mob_at = locate(rand(level_inner_min_x, level_inner_max_x), rand(level_inner_min_y, level_inner_max_y), level_z)
				if(istype(place_mob_at, mob_turf) && !(locate(/mob/living) in place_mob_at))
					var/mob_type = pickweight(mob_types)
					new mob_type(place_mob_at)
					mob_count--
					CHECK_TICK


/datum/level_data/player_level/vesta/caves
	name = "Vesta - Caves"
	level_id = "vesta_caves"
	use_global_exterior_ambience = FALSE
	base_area = null
	abstract_type = /datum/level_data/player_level/vesta
//	connected_levels = list(
//		"vesta_caves" = WEST,
//		"vesta_caves" = EAST,
//		"vesta_caves" = NORTH,
//		"vesta_caves" = SOUTH
//	)
	strata = /decl/strata/acheron
	level_generators = list(
		/datum/random_map/automata/cave_system/acheron,
		/datum/random_map/noise/ore/rich,
		/datum/random_map/noise/forage/acheron/caves,
		/datum/random_map/noise/acheron/caves
	)
	base_turf = /turf/floor/rock/cave
	exterior_atmosphere = list(
		/decl/material/gas/oxygen =   MOLES_O2STANDARD,
		/decl/material/gas/nitrogen = MOLES_N2STANDARD
	)
	submap_budget   = 2
	submap_category = MAP_TEMPLATE_CATEGORY_VESTA_CAVES
	submap_area		= /area/vesta/caves/point_of_interest
	list/mobs_to_spawn = list()

/obj/abstract/level_data_spawner/vesta_caves
	level_data_type = /datum/level_data/player_level/vesta/caves