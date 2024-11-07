//added by cael from old bs12
//not sure if there's an immediate place for secure wall lockers, but i'm sure the players will think of something

/obj/structure/closet/walllocker
	desc = "A wall mounted storage locker."
	name = "Wall Locker"
	icon = 'icons/obj/closets/bases/wall.dmi'
	icon_state = "wall-locker"
	icon_closed = "wall-locker"
	icon_opened = "wall-lockeropen"
	density = FALSE
	anchored = TRUE
	wall_mounted = 1
	storage_types = CLOSET_STORAGE_ITEMS
	setup = 0
	obj_flags = OBJ_FLAG_MOVES_UNSUPPORTED
	directional_offset = @'{"NORTH":{"y":-32}, "SOUTH":{"y":32}, "EAST":{"x":-32}, "WEST":{"x":32}}'

/obj/structure/closet/walllocker/Initialize()
	. = ..()
	tool_interaction_flags &= ~TOOL_INTERACTION_ANCHOR

/obj/structure/closet/walllocker/suit
	name = "wall suit storage"
	desc = "A nook in the wall storing a couple of space suits."
	closet_appearance = /decl/closet_appearance/wall/suit

/obj/structure/closet/walllocker/suit/WillContain()
	return list(
		/obj/item/clothing/head/helmet/space = 2,
		/obj/item/clothing/suit/space = 2,
		/obj/item/tank/oxygen = 2
	)

/obj/structure/closet/walllocker/oxy
	desc = "A wall mounted emergency locker."
	name = "Emergency wall locker"
	icon = 'icons/obj/closets/bases/wall.dmi'
	icon_state = "shipping_wall"
	icon_closed = "shipping_wall"
	icon_opened = "shipping_wall_open"
	density = FALSE
	anchored = TRUE
	wall_mounted = 1
	storage_types = CLOSET_STORAGE_ITEMS
//	setup = CLOSET_HAS_LOCK
//	locked = TRUE
//	req_access = list(access_captain)
	obj_flags = OBJ_FLAG_MOVES_UNSUPPORTED
//	directional_offset = @'{"NORTH":{"y":-32}, "SOUTH":{"y":32}, "EAST":{"x":-32}, "WEST":{"x":32}}'

/obj/structure/closet/walllocker/oxy/WillContain()
	return list(
		/obj/item/flashlight/flare/glowstick = 2,
		/obj/item/clothing/mask/gas/radical = 2,
		/obj/item/crowbar/cheap = 1,
		/obj/item/tank/emergency/oxygen = 2
	)

/obj/structure/closet/walllocker/oxy/Initialize()
	. = ..()
	verbs -= /obj/structure/closet/verb/verb_toggleopen

/obj/structure/closet/walllocker/oxy/attack_hand(mob/user)
	var/decl/security_state/security_state = GET_DECL(global.using_map.security_state)
	if(!opened & security_state.current_security_level_is_lower_than(security_state.high_security_level))
		to_chat(usr, "<span class='danger'>Locked until emergency situation</span>")
		return FALSE
	else
		return ..()

/*
/obj/structure/closet/walllocker/oxy/togglelock(mob/user as mob)
	var/decl/security_state/security_state = GET_DECL(global.using_map.security_state)
	if(!opened & security_state.current_security_level_is_lower_than(security_state.high_security_level))
		to_chat(usr, "<span class='danger'>Locked until emergency situation</span>")
		return FALSE
	if(opened)
		return
	else
		return ..()
*/

/obj/structure/closet/walllocker/med
	desc = "A wall mounted first-aid locker."
	name = "First-aid wall locker"
	icon = 'icons/obj/closets/bases/wall.dmi'
	icon_state = "medical_wall_first_aid"
	icon_closed = "medical_wall_first_aid"
	icon_opened = "medical_wall_first_aid_open"
	density = FALSE
	anchored = TRUE
	wall_mounted = 1
	storage_types = CLOSET_STORAGE_ITEMS
	setup = 0
	obj_flags = OBJ_FLAG_MOVES_UNSUPPORTED
//	directional_offset = @'{"NORTH":{"y":-32}, "SOUTH":{"y":32}, "EAST":{"x":-32}, "WEST":{"x":32}}'

/obj/structure/closet/walllocker/med/WillContain()
	return list(
		/obj/item/pill_bottle/painkillers = 1,
		/obj/item/stack/medical/bandage = 5,
		/obj/item/stack/medical/splint = 1,
		/obj/item/pill_bottle/stabilizer = 1,
		/obj/item/stack/medical/ointment = 5
	)