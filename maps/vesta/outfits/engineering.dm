/decl/outfit/job/vesta/engineer
	name = "Job - Station Engineer"
	belt = /obj/item/belt/utility/full
	l_ear = /obj/item/radio/headset/headset_eng
	shoes = /obj/item/clothing/shoes/workboots
	pda_slot = slot_l_store_str
	outfit_flags = OUTFIT_HAS_BACKPACK | OUTFIT_EXTENDED_SURVIVAL | OUTFIT_HAS_VITALS_SENSOR
	head = /obj/item/clothing/head/hardhat
	uniform = /obj/item/clothing/jumpsuit/hazard
	r_pocket = /obj/item/t_scanner
	id_type = /obj/item/card/id/vesta/engineering
	pda_type = /obj/item/modular_computer/pda/engineering

/decl/outfit/job/vesta/engineer/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_ENGINEERING

/obj/item/card/id/vesta/engineering
	name = "identification card"
	desc = "A card issued to engineering staff."
	detail_color = COLOR_SUN

/decl/outfit/job/vesta/chief_engineer
	name = "Job - Head Engineer"
	uniform = /obj/item/clothing/jumpsuit/hazard
	glasses = /obj/item/clothing/glasses/welding/superior
	suit = /obj/item/clothing/suit/hazardvest
	gloves = /obj/item/clothing/gloves/thick
	shoes = /obj/item/clothing/shoes/workboots
	pda_type = /obj/item/modular_computer/pda/heads/ce
	hands = list(/obj/item/wrench)
	belt = /obj/item/belt/utility/full
	id_type = /obj/item/card/id/vesta/engineering
	l_ear = /obj/item/radio/headset/heads/ce
	outfit_flags = OUTFIT_HAS_BACKPACK | OUTFIT_EXTENDED_SURVIVAL | OUTFIT_HAS_VITALS_SENSOR
