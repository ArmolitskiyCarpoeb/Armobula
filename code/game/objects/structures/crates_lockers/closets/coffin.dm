/obj/structure/closet/coffin
	name = "coffin"
	desc = "It's a burial receptacle for the dearly departed."
	icon = 'icons/obj/closets/bases/closet.dmi'
	setup = 0
	icon_state = "coffin"
	icon_closed = "coffin"
	icon_opened = "coffin_open"

	var/screwdriver_time_needed = 7.5 SECONDS

/obj/structure/closet/coffin/examine(mob/user, distance)
	. = ..()
	if(distance <= 1 && !opened)
		to_chat(user, "The lid is [locked ? "tightly secured with screws." : "unsecured and can be opened."]")

/obj/structure/closet/coffin/can_open(mob/user)
	. =  ..()
	if(locked)
		return FALSE

/obj/structure/closet/coffin/attackby(obj/item/W, mob/user)
	if(!opened && IS_SCREWDRIVER(W))
		to_chat(user, SPAN_NOTICE("You begin screwing [src]'s lid [locked ? "open" : "shut"]."))
		playsound(src, 'sound/items/Screwdriver.ogg', 100, 1)
		if(do_after(user, screwdriver_time_needed, src))
			locked = !locked
			to_chat(user, SPAN_NOTICE("You [locked ? "screw down" : "unscrew"] [src]'s lid."))
		else
			to_chat(user, "You must remain still to [locked ? "unlock" : "lock"] [src].")
		return TRUE
	else
		return ..()

/obj/structure/closet/coffin/toggle(mob/user)
	if(!(opened ? close(user) : open(user)))
		to_chat(user, SPAN_NOTICE("It won't budge!"))

/obj/structure/closet/coffin/req_breakout()
	. = ..()
	if(locked)
		return TRUE

/obj/structure/closet/coffin/break_open(mob/user)
	locked = FALSE
	..()

/obj/structure/closet/coffin/wooden
	name = "coffin"
	desc = "It's a burial receptacle for the dearly departed."
	icon = 'icons/obj/closets/bases/closet.dmi'
	setup = 0
	icon_state = "coffin_black"
	icon_closed = "coffin_black"
	icon_opened = "coffin_black_open"