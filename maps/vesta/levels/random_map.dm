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
