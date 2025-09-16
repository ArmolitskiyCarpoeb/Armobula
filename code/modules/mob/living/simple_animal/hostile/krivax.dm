/mob/living/simple_animal/hostile/krivax
	name = "кривакс"
	desc = "Покрытый хитиновым экзоскелетом макако-подобный зверь."
	icon = 'icons/mob/simple_animal/krivax.dmi'
	mob_size = MOB_SIZE_MEDIUM
	see_in_dark = 10
	speak_emote = list("clicks")
	max_health = 100
	bleed_colour = COLOR_SKY_BLUE
	attack_delay = DEFAULT_QUICK_COOLDOWN
	natural_weapon = /obj/item/natural_weapon/bite
//	faction = "creature"
	supernatural = 0
	ability_handlers = list(/datum/ability_handler/predator)
	move_intents        = list(
		/decl/move_intent/walk/animal_fast,
		/decl/move_intent/run/animal_fast
	)
	butchery_data = /decl/butchery_data/animal/antlion
	min_gas          = null
	max_gas          = null
	minbodytemp      = 0

/mob/living/simple_animal/hostile/krivax/get_door_pry_time()
	return 10 SECONDS

/mob/living/simple_animal/hostile/krivax/get_pry_desc()
	return "gnashing"
