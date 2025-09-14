/mob/living/simple_animal/hostile/krivax
	name = "Кривакс"
	desc = "Покрытый хитиновым экзоскелетом макако-подобный зверь."
	icon = 'icons/mob/simple_animal/krivax.dmi'
	mob_size = MOB_SIZE_MEDIUM
	see_in_dark = 10
	speak_emote = list("clicks")
	max_health = 100
	bleed_colour = COLOR_SKY_BLUE
	attack_delay = DEFAULT_QUICK_COOLDOWN
	natural_weapon = list(/obj/item/natural_weapon/bite, /obj/item/natural_weapon/claws)
//	faction = "creature"
	supernatural = 0
	ability_handlers = list(/datum/ability_handler/predator)
	move_intents        = list(
		/decl/move_intent/walk/animal_fast,
		/decl/move_intent/run/animal_fast
	)
	butchery_data = /decl/butchery_data/animal/antlion
