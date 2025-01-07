/datum/random_map/automata/cave_system/acheron
	descriptor          = "Acheron caves"
	floor_type          = /turf/floor/rock/cave
	wall_type           = /turf/wall/natural/cave
	sparse_mineral_turf = /turf/wall/natural/random/cave
	rich_mineral_turf   = /turf/wall/natural/random/high_chance/cave

/datum/random_map/noise/acheron
	abstract_type = /datum/random_map/noise/acheron
	smoothing_iterations = 1
	smooth_single_tiles  = TRUE
	target_turf_type = /turf/unsimulated/mask

/datum/random_map/noise/acheron/caves
	descriptor           = "CAVES"
	target_turf_type = /turf/floor/rock/cave

/datum/random_map/noise/acheron/caves/get_appropriate_path(var/value)
	value = noise2value(value)
	if(value <= 2)
		return /turf/floor/barren
	if(value <= 3)
		return /turf/floor/moss
	if(value <= 4)
		return /turf/floor/moss
	if(value <= 5)
		return /turf/floor/rock/cave
	return /turf/floor/rock/cave

/datum/random_map/noise/forage/acheron
	abstract_type = /datum/random_map/noise/forage/acheron

/datum/random_map/noise/forage/acheron/caves/New()
	forage["caves"] = list(
		"plumphelmet",
		"glowbell",
		"caverncandle",
		"towercap"
	)
	..()