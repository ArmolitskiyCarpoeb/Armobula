/obj/structure/closet/secure_closet
	name = "secure locker"
	desc = "It's a card-locked storage unit."

	setup = CLOSET_HAS_LOCK | CLOSET_CAN_BE_WELDED
	locked = TRUE

	icon_state = "secure1"
	icon_closed = "secure"
	icon_locked = "secure1"
	icon_off = "secureoff"

	icon_opened = "secureopen"
	wall_mounted = 0 //never solid (You can always pass over it)
	current_health = 200

	var/redlight = "light_r"
	var/greenlight = "light_g"
	var/emag = "sparks"

/obj/structure/closet/secure_closet/slice_into_parts(obj/item/weldingtool/WT, mob/user)
	to_chat(user, "<span class='notice'>\The [src] is too strong to be taken apart.</span>")

/obj/structure/closet/secure_closet/update_icon()
	..()
	if(broken)
		overlays += emissive_overlay(icon, "sparks")
	else if(locked)
		overlays += emissive_overlay(icon, "light_r")
		set_light(0.4, 0.7, LIGHT_COLOR_RED)
	else
		overlays += emissive_overlay(icon, "light_g")
		set_light(0.4, 0.7, LIGHT_COLOR_GREEN)
	if(opened)
		overlays -= emissive_overlay(icon, "light_g")