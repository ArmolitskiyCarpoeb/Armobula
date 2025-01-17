#define XENOARCH_SPAWN_CHANCE 0
#define DIGSITESIZE_LOWER 0
#define DIGSITESIZE_UPPER 0
#define ARTIFACTSPAWNNUM_LOWER 0
#define ARTIFACTSPAWNNUM_UPPER 0

//
// Xenoarch subsystem handles initialization of Xenoarcheaology artifacts and digsites.
//
SUBSYSTEM_DEF(xenoarch)
	name = "Xenoarch"
	init_order = SS_INIT_XENOARCH
	flags = SS_NO_FIRE
	var/list/artifact_spawning_turfs = list()
	var/list/digsite_spawning_turfs  = list()
	var/list/digsite_types_weighted  = list()
	var/list/possible_spawn_walls    = list()

/datum/controller/subsystem/xenoarch/Initialize(timeofday)

	for(var/turf/wall/natural/M in possible_spawn_walls)
		if(QDELETED(M) || !M.density || M.ramp_slope_direction || !prob(XENOARCH_SPAWN_CHANCE))
			continue
		var/farEnough = 1
		for(var/A in digsite_spawning_turfs)
			var/turf/T = A
			if(T in range(5, M))
				farEnough = 0
				break
		if(!farEnough)
			continue

		digsite_spawning_turfs.Add(M)

		var/digsite = get_random_digsite_type()
		var/target_digsite_size = rand(DIGSITESIZE_LOWER, DIGSITESIZE_UPPER)

		var/list/processed_turfs = list()
		var/list/turfs_to_process = list(M)

		var/list/viable_adjacent_turfs = list()
		if(target_digsite_size > 1)
			for(var/turf/wall/natural/T in orange(2, M))
				if(!T.density)
					continue
				if(T.finds)
					continue
				if(T in processed_turfs)
					continue
				var/area/A = get_area(T)
				if(!A.allow_xenoarchaeology_finds)
					continue
				viable_adjacent_turfs.Add(T)

			target_digsite_size = min(target_digsite_size, viable_adjacent_turfs.len)

		for(var/i = 1 to target_digsite_size)
			turfs_to_process += pick_n_take(viable_adjacent_turfs)

		while(turfs_to_process.len)
			var/turf/wall/natural/archeo_turf = pop(turfs_to_process)
			if(!istype(archeo_turf))
				continue
			processed_turfs.Add(archeo_turf)
			if(isnull(archeo_turf.finds))
				archeo_turf.finds = list()
				if(prob(50))
					archeo_turf.finds.Add(new /datum/find(digsite, rand(10, 190)))
				else if(prob(75))
					archeo_turf.finds.Add(new /datum/find(digsite, rand(10, 90)))
					archeo_turf.finds.Add(new /datum/find(digsite, rand(110, 190)))
				else
					archeo_turf.finds.Add(new /datum/find(digsite, rand(10, 50)))
					archeo_turf.finds.Add(new /datum/find(digsite, rand(60, 140)))
					archeo_turf.finds.Add(new /datum/find(digsite, rand(150, 190)))

				//sometimes a find will be close enough to the surface to show
				var/datum/find/F = archeo_turf.finds[1]
				if(F.excavation_required <= F.view_range)
					archeo_turf.archaeo_overlay = image('icons/turf/excavation_overlays.dmi',"overlay_archaeo[rand(1,3)]")
					archeo_turf.update_icon()

			//have a chance for an artifact to spawn here, but not in animal or plant digsites
			var/decl/xenoarch_digsite/D = GET_DECL(digsite)
			if(isnull(M.artifact_find) && D.can_have_anomalies)
				artifact_spawning_turfs.Add(archeo_turf)
		CHECK_TICK

	possible_spawn_walls.Cut()

	//create artifact machinery
	var/num_artifacts_spawn = rand(ARTIFACTSPAWNNUM_LOWER, ARTIFACTSPAWNNUM_UPPER)
	var/list/final_artifact_spawning_turfs = list()
	for(var/i = 1 to num_artifacts_spawn)
		final_artifact_spawning_turfs += pick_n_take(artifact_spawning_turfs)
	artifact_spawning_turfs = final_artifact_spawning_turfs
	for(var/turf/wall/natural/artifact_turf in artifact_spawning_turfs)
		artifact_turf.artifact_find = new()
	..()

/datum/controller/subsystem/xenoarch/Recover()
	if (istype(SSxenoarch.artifact_spawning_turfs))
		artifact_spawning_turfs = SSxenoarch.artifact_spawning_turfs
	if (istype(SSxenoarch.digsite_spawning_turfs))
		digsite_spawning_turfs = SSxenoarch.digsite_spawning_turfs

/datum/controller/subsystem/xenoarch/proc/get_random_digsite_type()
	if(!digsite_types_weighted.len)
		var/list/digsites = decls_repository.get_decls_of_subtype(/decl/xenoarch_digsite)
		for(var/D in digsites)
			var/decl/xenoarch_digsite/digsite = digsites[D]
			digsite_types_weighted[D] = digsite.weight
	return pickweight(digsite_types_weighted)

/datum/controller/subsystem/xenoarch/proc/get_nearest_artifact(var/turf/source)
	var/artifact_distance = INFINITY
	var/artifact_id
	for(var/turf/wall/natural/T in artifact_spawning_turfs)
		if(T.artifact_find)
			var/cur_dist = get_dist(source, T) * 2
			if(cur_dist < artifact_distance)
				artifact_distance = cur_dist + rand() * 2 - 1
				artifact_id = T.artifact_find.artifact_id
	if(artifact_id)
		return list(artifact_id, artifact_distance)

#undef XENOARCH_SPAWN_CHANCE
#undef DIGSITESIZE_LOWER
#undef DIGSITESIZE_UPPER
#undef ARTIFACTSPAWNNUM_LOWER
#undef ARTIFACTSPAWNNUM_UPPER
