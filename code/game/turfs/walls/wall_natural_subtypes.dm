/turf/wall/natural/random
	reinf_material = null

/turf/wall/natural/random/proc/get_weighted_mineral_list()
	if(strata_override)
		var/decl/strata/strata_info = GET_DECL(strata_override)
		. = strata_info.ores_sparse
	if(!.)
		. = SSmaterials.weighted_minerals_sparse

/turf/wall/natural/random/high_chance/get_weighted_mineral_list()
	if(strata_override)
		var/decl/strata/strata_info = GET_DECL(strata_override)
		. = strata_info.ores_rich
	if(!.)
		. = SSmaterials.weighted_minerals_rich

/turf/wall/natural/random/Initialize(ml, materialtype, rmaterialtype)
	if(!strata_override)
		strata_override = SSmaterials.get_strata_type(src)
	if(isnull(reinf_material))
		var/default_mineral_list = get_weighted_mineral_list()
		if(LAZYLEN(default_mineral_list))
			reinf_material = pickweight(default_mineral_list)
	. = ..()

/turf/wall/natural/volcanic
	strata_override = /decl/strata/igneous

/turf/wall/natural/random/volcanic
	strata_override = /decl/strata/igneous

/turf/wall/natural/random/high_chance/volcanic
	strata_override = /decl/strata/igneous

/turf/wall/natural/ice
	strata_override = /decl/strata/permafrost
	floor_type = /turf/floor/ice

/turf/wall/natural/random/ice
	strata_override = /decl/strata/permafrost
	floor_type = /turf/floor/ice

/turf/wall/natural/random/high_chance/ice
	strata_override = /decl/strata/permafrost
	floor_type = /turf/floor/ice

/turf/wall/natural/dirt
	material = /decl/material/solid/soil
	color = "#41311b"
	floor_type = /turf/floor/dirt

/turf/wall/natural/basalt
	material = /decl/material/solid/stone/basalt
	color = COLOR_DARK_GRAY
	floor_type = /turf/floor/rock/basalt

/turf/wall/natural/random/basalt
	material = /decl/material/solid/stone/basalt
	color = COLOR_DARK_GRAY
	floor_type = /turf/floor/rock/basalt

/turf/wall/natural/random/high_chance/basalt
	material = /decl/material/solid/stone/basalt
	color = COLOR_DARK_GRAY
	floor_type = /turf/floor/rock/basalt

/turf/wall/natural/random/high_chance/cave
	material = /decl/material/solid/stone/granite
	color = null
	floor_type = /turf/floor/rock/cave

//new

/turf/wall/natural/cave
	material = /decl/material/solid/stone/granite
	color = "#dedede"
	floor_type = /turf/floor/rock/cave

/turf/wall/natural/random/cave
	material = /decl/material/solid/stone/granite
	color = "#dedede"
	floor_type = /turf/floor/rock/cave

/turf/wall/natural/cave/god
	material = /decl/material/solid/stone/granite/god
	color = "#dedede"
	floor_type = /turf/floor/rock/cave
	heat_capacity = 992500 //a little over 5 cm thick , 312500 for 1 m by 2.5 m by 0.25 m plasteel wall
	explosion_resistance = 100