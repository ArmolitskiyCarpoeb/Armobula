/datum/random_map/noise/caves
	descriptor = "caves"
	smoothing_iterations = 3

/datum/random_map/noise/caves/replace_space
	descriptor = "caves (replacement)"
	target_turf_type = TRUE

/datum/random_map/noise/caves/get_map_char(var/value)
	return "<font color='#[value][value][value][value][value][value]'>[pick(list(",",".","'","`"))]</font>"

/datum/random_map/noise/caves/get_appropriate_path(var/value)
	value = noise2value(value)
	if(value <= 2)
		return /turf/floor/rock/cave
	if(value <= 3)
		return /turf/floor/dirt
	if(value <= 4)
		return /turf/floor/moss
	if(value <= 6)
		return /turf/floor/rock/cave
	return /turf/floor/rock/cave
/*
/datum/random_map/noise/caves/get_additional_spawns(var/value, var/turf/T)
	var/val = min(9,max(0,round((value/cell_range)*10)))
	if(isnull(val)) val = 0
	switch(val)
		if(1)
			if(prob(3))
				var/grass_path = pick(subtypesof(/obj/structure/flora/plant/random_mushroom/glowing))
				new grass_path(T)
		if(2 to 3)
			if(prob(25))
				var/grass_path = pick(subtypesof(/obj/structure/flora/plant/random_mushroom))
				new grass_path(T)
			if(prob(1))
				var/mob_type = pick(list(/mob/living/simple_animal/hostile/slug, /mob/living/simple_animal/hostile/antlion))
				new mob_type(T)
		if(4 to 7)
			if(prob(25))
				var/grass_path = pick(subtypesof(/obj/structure/flora/plant/random_mushroom))
				new grass_path(T)
		if(8 to 9)
			if(prob(25))
				new /obj/structure/flora/plant/random_mushroom(T)
			else if(prob(25))
				new /obj/structure/flora/tree/softwood/towercap(T)
*/

/datum/random_map/noise/caves/get_additional_spawns(var/value, var/turf/T)
	var/val = min(9,max(0,round((value/cell_range)*10)))
	if(isnull(val)) val = 0
	switch(val)
		if(8 to 9)
			if(prob(75))
				new /obj/structure/flora/plant/random_mushroom(T)
		if(6 to 7)
			if(prob(75))
				var/grass_path = pick(subtypesof(/obj/structure/flora/plant/random_mushroom/glowing))
				new grass_path(T)