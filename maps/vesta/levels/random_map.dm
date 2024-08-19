/datum/random_map/automata/cave_system/acheron
	descriptor          = "Acheron caves"
	floor_type          = /turf/floor/natural/rock/basalt
	wall_type           = /turf/wall/natural/basalt
	sparse_mineral_turf = /turf/wall/natural/random/basalt
	rich_mineral_turf   = /turf/wall/natural/random/high_chance/basalt

/datum/random_map/noise/acheron
	abstract_type = /datum/random_map/noise/acheron
	smoothing_iterations = 1
	smooth_single_tiles  = TRUE
	target_turf_type = /turf/unsimulated/mask
