/obj/structure/closet/secure_closet/engineering_chief
	name = "chief engineer's locker"
	icon_state = "securece1"
	icon_closed = "securece"
	icon_locked = "securece1"
	icon_opened = "secureceopen"
	icon_off = "secureceoff"
	req_access = list(access_ce)

/obj/structure/closet/secure_closet/engineering_chief/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(
			/obj/item/clothing/webbing/vest/brown = 70,
			/obj/item/clothing/webbing = 30
		)),
		new/datum/atom_creator/weighted(list(
			/obj/item/backpack/industrial,
			/obj/item/backpack/satchel/eng
		)),
		new/datum/atom_creator/simple(/obj/item/backpack/dufflebag/eng, 50),
		/obj/item/blueprints,
		/obj/item/clothing/jumpsuit/chief_engineer,
		/obj/item/clothing/head/welding,
		/obj/item/clothing/gloves/insulated,
		/obj/item/clothing/shoes/color/brown,
		/obj/item/radio/headset/heads/ce,
		/obj/item/toolbox/mechanical,
		/obj/item/clothing/suit/hazardvest,
		/obj/item/clothing/mask/gas,
		/obj/item/multitool,
		/obj/item/flash,
		/obj/item/stack/tape_roll/barricade_tape/engineering,
		/obj/item/crowbar/brace_jack,
		/obj/item/belt/utility/full
	)

/obj/structure/closet/secure_closet/engineering_electrical
	name = "electrical supplies"
	req_access = list(access_engine_equip)
	icon_state = "secureengelec1"
	icon_closed = "secureengelec"
	icon_locked = "secureengelec1"
	icon_opened = "toolclosetopen"
	icon_off = "secureengelecoff"

/obj/structure/closet/secure_closet/engineering_electrical/WillContain()
	return list(
		/obj/item/clothing/gloves/insulated = 3,
		/obj/item/toolbox/electrical = 3,
		/obj/item/toolbox/repairs = 3,
		/obj/item/stock_parts/circuitboard/apc = 3,
		/obj/item/multitool = 3
	)

/obj/structure/closet/secure_closet/engineering_welding
	name = "welding supplies"
	req_access = list(access_construction)
	icon_state = "secureengweld1"
	icon_closed = "secureengweld"
	icon_locked = "secureengweld1"
	icon_opened = "toolclosetopen"
	icon_off = "secureengweldoff"

/obj/structure/closet/secure_closet/engineering_welding/WillContain()
	return list(
		/obj/item/clothing/head/welding = 3,
		/obj/item/weldingtool/largetank = 3,
		/obj/item/chems/weldpack = 3,
		/obj/item/clothing/glasses/welding = 3,
		/obj/item/chems/welder_tank = 6
	)

/obj/structure/closet/secure_closet/engineering_personal
	name = "engineer's locker"
	req_access = list(access_engine_equip)
	icon_state = "secureeng1"
	icon_closed = "secureeng"
	icon_locked = "secureeng1"
	icon_opened = "secureengopen"
	icon_off = "secureengoff"

/obj/structure/closet/secure_closet/engineering_personal/WillContain()
	return list(
		new/datum/atom_creator/weighted(
			list(
				/obj/item/clothing/webbing/vest/brown = 70,
				/obj/item/clothing/webbing = 30
			)
		),
		new/datum/atom_creator/weighted(
			list(
				/obj/item/backpack/industrial,
				/obj/item/backpack/satchel/eng
			)
		),
		new/datum/atom_creator/simple(/obj/item/backpack/dufflebag/eng, 50),
		/obj/item/toolbox/mechanical,
		/obj/item/radio/headset/headset_eng,
		/obj/item/clothing/suit/hazardvest,
		/obj/item/clothing/mask/gas,
		/obj/item/clothing/glasses/meson,
		/obj/item/stack/tape_roll/barricade_tape/engineering,
		/obj/item/belt/utility/full
	)

/obj/structure/closet/secure_closet/atmos_personal
	name = "technician's locker"
	req_access = list(access_atmospherics)
	icon_state = "secureatm1"
	icon_closed = "secureatm"
	icon_locked = "secureatm1"
	icon_opened = "secureatmopen"
	icon_off = "secureatmoff"

/obj/structure/closet/secure_closet/atmos_personal/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(
			/obj/item/clothing/webbing/vest/brown = 70,
			/obj/item/clothing/webbing = 30
		)),
		new/datum/atom_creator/weighted(list(
			/obj/item/backpack/industrial,
			/obj/item/backpack/satchel/eng
		)),
		new/datum/atom_creator/simple(/obj/item/backpack/dufflebag/eng, 50),
		/obj/item/clothing/suit/fire,
		/obj/item/flashlight,
		/obj/item/chems/spray/extinguisher,
		/obj/item/radio/headset/headset_eng,
		/obj/item/clothing/suit/hazardvest,
		/obj/item/clothing/mask/gas,
		/obj/item/stack/tape_roll/barricade_tape/atmos,
		/obj/item/belt/utility/atmostech
	)
