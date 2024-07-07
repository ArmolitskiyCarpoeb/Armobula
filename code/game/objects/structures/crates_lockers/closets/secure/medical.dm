#define RANDOM_SCRUBS new/datum/atom_creator/weighted(list(                                                                                         \
				list(/obj/item/clothing/shirt/scrubs,          /obj/item/clothing/pants/scrubs,          /obj/item/clothing/head/surgery),          \
				list(/obj/item/clothing/shirt/scrubs/blue,     /obj/item/clothing/pants/scrubs/blue,     /obj/item/clothing/head/surgery/blue),     \
				list(/obj/item/clothing/shirt/scrubs/green,    /obj/item/clothing/pants/scrubs/green,    /obj/item/clothing/head/surgery/green),    \
				list(/obj/item/clothing/shirt/scrubs/purple,   /obj/item/clothing/pants/scrubs/purple,   /obj/item/clothing/head/surgery/purple),   \
				list(/obj/item/clothing/shirt/scrubs/black,    /obj/item/clothing/pants/scrubs/black,    /obj/item/clothing/head/surgery/black),    \
				list(/obj/item/clothing/shirt/scrubs/lilac,    /obj/item/clothing/pants/scrubs/lilac,    /obj/item/clothing/head/surgery/lilac),    \
				list(/obj/item/clothing/shirt/scrubs/teal,     /obj/item/clothing/pants/scrubs/teal,     /obj/item/clothing/head/surgery/teal),     \
				list(/obj/item/clothing/shirt/scrubs/heliodor, /obj/item/clothing/pants/scrubs/heliodor, /obj/item/clothing/head/surgery/heliodor), \
				list(/obj/item/clothing/shirt/scrubs/navyblue, /obj/item/clothing/pants/scrubs/navyblue, /obj/item/clothing/head/surgery/navyblue)  \
			)                                                                                                                                       \
		)

/obj/structure/closet/secure_closet/medical1
	name = "medical equipment closet"
	desc = "Filled with medical junk."
	icon_state = "medical1"
	icon_closed = "medical"
	icon_locked = "medical1"
	icon_opened = "medicalopen"
	icon_off = "medicaloff"
	req_access = list(access_medical_equip)

/obj/structure/closet/secure_closet/medical1/WillContain()
	return list(
		/obj/item/box/autoinjectors,
		/obj/item/box/syringes,
		/obj/item/chems/dropper = 2,
		/obj/item/chems/glass/beaker = 2,
		/obj/item/chems/glass/bottle/stabilizer = 2,
		/obj/item/chems/glass/bottle/antitoxin = 2,
		/obj/random/firstaid,
		/obj/item/box/masks,
		/obj/item/box/gloves
	)

/obj/structure/closet/secure_closet/medical3
	name = "medical doctor's locker"
	req_access = list(access_medical_equip)
	icon_state = "securemed1"
	icon_closed = "securemed"
	icon_locked = "securemed1"
	icon_opened = "securemedopen"
	icon_off = "securemedoff"

/obj/structure/closet/secure_closet/medical3/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/backpack/medic, /obj/item/backpack/satchel/med)),
		new/datum/atom_creator/simple(/obj/item/backpack/dufflebag/med, 50),
		/obj/item/clothing/head/nursehat,
		/obj/item/clothing/jumpsuit/medical,
		/obj/item/clothing/dress/nurse = 2,
		/obj/item/clothing/pants/slacks/white/orderly,
		/obj/item/clothing/shirt/button/orderly,
		/obj/item/clothing/neck/tie/long/red,
		/obj/item/clothing/suit/toggle/labcoat,
		/obj/item/clothing/suit/jacket/first_responder,
		/obj/item/clothing/shoes/color/white,
		/obj/item/radio/headset/headset_med,
		/obj/item/stack/tape_roll/barricade_tape/medical,
		/obj/item/belt/medical/emt,
		RANDOM_SCRUBS,
		RANDOM_SCRUBS
	)

/obj/structure/closet/secure_closet/paramedic
	name = "paramedic locker"
	desc = "Supplies for a first responder."
	icon_state = "medical1"
	icon_closed = "medical"
	icon_locked = "medical1"
	icon_opened = "medicalopen"
	icon_off = "medicaloff"
	req_access = list(access_medical_equip)

/obj/structure/closet/secure_closet/paramedic/WillContain()
	return list(
		/obj/item/box/autoinjectors,
		/obj/item/box/syringes,
		/obj/item/chems/glass/bottle/stabilizer,
		/obj/item/chems/glass/bottle/antitoxin,
		/obj/item/belt/medical/emt,
		/obj/item/clothing/mask/gas,
		/obj/item/clothing/suit/jacket/first_responder,
		/obj/item/clothing/suit/toggle/labcoat,
		/obj/item/radio/headset/headset_med,
		/obj/item/flashlight,
		/obj/item/tank/emergency/oxygen/engi,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/scanner/health,
		/obj/item/scanner/breath,
		/obj/item/radio/off,
		/obj/random/medical,
		/obj/item/crowbar,
		/obj/item/chems/spray/extinguisher/mini,
		/obj/item/box/freezer,
		/obj/item/clothing/webbing/vest
	)

/obj/structure/closet/secure_closet/cmo
	name = "chief medical officer's locker"
	req_access = list(access_cmo)
	icon_state = "cmosecure1"
	icon_closed = "cmosecure"
	icon_locked = "cmosecure1"
	icon_opened = "cmosecureopen"
	icon_off = "cmosecureoff"

/obj/structure/closet/secure_closet/cmo/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/backpack/medic, /obj/item/backpack/satchel/med)),
		new/datum/atom_creator/simple(/obj/item/backpack/dufflebag/med, 50),
		/obj/item/clothing/suit/bio_suit/cmo,
		/obj/item/clothing/head/bio_hood/cmo,
		/obj/item/clothing/shoes/color/white,
		/obj/item/clothing/jumpsuit/chief_medical_officer,
		/obj/item/clothing/suit/toggle/labcoat/cmo,
		/obj/item/clothing/suit/toggle/labcoat/cmoalt,
		/obj/item/clothing/gloves/latex,
		/obj/item/clothing/shoes/color/brown,
		/obj/item/radio/headset/heads/cmo,
		/obj/item/flash,
		/obj/item/chems/hypospray/vial,
		RANDOM_SCRUBS
	)

/obj/structure/closet/secure_closet/chemical
	name = "chemical closet"
	desc = "Store dangerous chemicals in here."
	icon_state = "medical1"
	icon_closed = "medical"
	icon_locked = "medical1"
	icon_opened = "medicalopen"
	icon_off = "medicaloff"
	req_access = list(access_chemistry)

/obj/structure/closet/secure_closet/chemical/WillContain()
	return list(
		/obj/item/box/pillbottles = 2,
		/obj/random/medical = 12
	)

/obj/structure/closet/secure_closet/medical_wall
	name = "first aid closet"
	desc = "It's a secure wall-mounted storage unit for first aid supplies."
	icon_state = "medical_wall_locked"
	icon_closed = "medical_wall_unlocked"
	icon_locked = "medical_wall_locked"
	icon_opened = "medical_wall_open"
	icon_broken = "medical_wall_sparks"
	icon_off = "medical_wall_off"
	anchored = TRUE
	density = FALSE
	wall_mounted = 1
	storage_types = CLOSET_STORAGE_ITEMS
	req_access = list(access_medical_equip)

/obj/structure/closet/secure_closet/medical_wall/Initialize()
	. = ..()
	tool_interaction_flags &= ~TOOL_INTERACTION_ANCHOR

/obj/structure/closet/secure_closet/medical_wall/pills
	name = "pill cabinet"

/obj/structure/closet/secure_closet/medical_wall/pills/WillContain()
	return list(
		/obj/item/pill_bottle/antibiotics = 1,
		/obj/item/pill_bottle/painkillers = 1,
		/obj/item/pill_bottle/antitoxins  = 1,
		/obj/item/pill_bottle/burn_meds   = 1,
		/obj/random/medical/pillbottle            = 1
	)

/obj/structure/closet/secure_closet/counselor
	name = "counselor's locker"
	icon_state = "chaplainsecure1"
	icon_closed = "chaplainsecure"
	icon_locked = "chaplainsecure1"
	icon_opened = "chaplainsecureopen"
	icon_off = "chaplainsecureoff"
	req_access = list(access_psychiatrist)

/obj/structure/closet/secure_closet/counselor/WillContain()
	return list(
		/obj/item/clothing/jumpsuit/psych,
		/obj/item/clothing/shirt/sweater/turquoise,
		/obj/item/clothing/pants/slacks/navy,
		/obj/item/clothing/suit/toggle/labcoat,
		/obj/item/clothing/shoes/color/white,
		/obj/item/chems/glass/bottle/sedatives,
		/obj/item/chems/syringe,
		/obj/item/pill_bottle/antidepressants,
		/obj/item/chems/pill/stimulants,
		/obj/item/clipboard,
		/obj/item/folder/cyan,
		/obj/item/taperecorder,
		/obj/item/magnetic_tape/random = 3,
		/obj/item/camera,
		/obj/random/plush/therapy,
		/obj/item/belt/general
	)

/obj/structure/closet/secure_closet/virology
	name = "virologist's locker"
	icon_state = "secureviro1"
	icon_closed = "secureviro"
	icon_locked = "secureviro1"
	icon_opened = "secureviroopen"
	icon_off = "securevirooff"

	req_access = list(access_virology)

/obj/structure/closet/secure_closet/virology/WillContain()
	return list(
		/obj/item/box/autoinjectors,
		/obj/item/box/syringes,
		/obj/item/chems/dropper = 2,
		/obj/item/chems/glass/beaker = 2,
		/obj/item/chems/glass/bottle/stabilizer,
		/obj/item/pill_bottle/antibiotics,
		/obj/item/chems/syringe/antibiotic,
		/obj/item/chems/glass/bottle/antitoxin,
		/obj/item/box/masks,
		/obj/item/box/gloves,
		/obj/item/clothing/jumpsuit/virologist,
		/obj/item/clothing/shoes/color/white,
		/obj/item/clothing/suit/toggle/labcoat/virologist,
		/obj/item/clothing/mask/surgical,
		/obj/item/scanner/health,
		/obj/item/scanner/breath,
		/obj/item/clothing/glasses/hud/health
	)

/obj/structure/closet/secure_closet/psychiatry
	name = "Psychiatrist's locker"
	desc = "Everything you need to keep the lunatics at bay."
	icon_state = "securemed1"
	icon_closed = "securemed"
	icon_locked = "securemed1"
	icon_opened = "securemedopen"
	icon_off = "securemedoff"
	req_access = list(access_psychiatrist)

/obj/structure/closet/secure_closet/psychiatry/WillContain()
	return list(
		/obj/item/clothing/suit/straight_jacket,
		/obj/item/chems/glass/bottle/sedatives,
		/obj/item/chems/syringe,
		/obj/item/pill_bottle/antidepressants,
		/obj/item/pill_bottle/stimulants,
		/obj/item/clothing/shirt/sweater/turquoise,
		/obj/item/clothing/pants/slacks/navy,
		/obj/item/clothing/jumpsuit/psych
	)
