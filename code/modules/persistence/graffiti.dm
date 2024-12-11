/obj/effect/decal/writing
	name = "graffiti"
	icon_state = "writing1"
	icon = 'icons/effects/writing.dmi'
	desc = "It looks like someone has scratched something here."
	gender = PLURAL
	blend_mode = BLEND_MULTIPLY
	color = "#000000"
	alpha = 120
	anchored = TRUE

	var/message
	var/graffiti_age = 0
	var/author = "unknown"

/obj/effect/decal/writing/Initialize(mapload, var/_age, var/_message, var/_author)
	var/list/random_icon_states = icon_states(icon)
	for(var/obj/effect/decal/writing/W in loc)
		random_icon_states.Remove(W.icon_state)
	if(random_icon_states.len)
		icon_state = pick(random_icon_states)
	SSpersistence.track_value(src, /decl/persistence_handler/graffiti)
	. = ..(mapload)
	if(!isnull(_age))
		graffiti_age = _age
	message = _message
	if(!isnull(author))
		author = _author

/obj/effect/decal/writing/Destroy()
	SSpersistence.forget_value(src, /decl/persistence_handler/graffiti)
	. = ..()

/obj/effect/decal/writing/examine(mob/user)
	. = ..(user)
	var/processed_message = user.handle_reading_literacy(user, message)
	if(processed_message)
		to_chat(user,  "It reads \"[processed_message]\".")

/obj/effect/decal/writing/attackby(var/obj/item/thing, var/mob/user)
	if(IS_WELDER(thing) && thing.do_tool_interaction(TOOL_WELDER, user, src, 3 SECONDS))
		playsound(src, 'sound/items/Welder2.ogg', 50, TRUE)
		user.visible_message(SPAN_NOTICE("\The [user] clears away some graffiti."))
		qdel(src)
		return TRUE
	else if(thing.sharp && !user.check_intent(I_FLAG_HELP)) //Check intent so you don't go insane trying to unscrew a light fixture over a graffiti
		if(jobban_isbanned(user, "Graffiti"))
			to_chat(user, SPAN_WARNING("You are banned from leaving persistent information across rounds."))
			return TRUE
		var/turf/T = get_turf(src)
		if(T)
			T.try_graffiti(user, thing)
			return TRUE
	return ..()
