/decl/outfit/job/vesta/doctor/head
	name = "vesta - Job - Head Doctor"
	l_ear = /obj/item/radio/headset/heads/cmo
	uniform = /obj/item/clothing/pants/slacks/black/outfit/detective
	shoes = /obj/item/clothing/shoes/dress
	pda_type = /obj/item/modular_computer/pda/medical
	pda_slot = slot_l_store_str
	r_pocket = /obj/item/chems/hypospray
	hands = list(/obj/item/firstaid/adv)
	id_type = /obj/item/card/id/vesta/doctor

/decl/outfit/job/vesta/doctor
	l_ear = /obj/item/radio/headset/headset_med
	shoes = /obj/item/clothing/shoes/color/white
	pda_type = /obj/item/modular_computer/pda/medical
	pda_slot = slot_l_store_str
	name = "vesta - Job - Junior Doctor"
	uniform = /obj/item/clothing/jumpsuit/medical
	hands = list(/obj/item/firstaid/adv)
	r_pocket = /obj/item/flashlight/pen
	id_type = /obj/item/card/id/vesta/doctor

/decl/outfit/job/vesta/doctor/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_MEDICAL

/decl/outfit/job/vesta/doctor/head/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_MEDICAL

/obj/item/card/id/vesta/doctor
	name = "identification card"
	desc = "A card issued to medical staff."
	detail_color = COLOR_PALE_BLUE_GRAY