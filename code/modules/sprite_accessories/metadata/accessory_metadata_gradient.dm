/decl/sprite_accessory_metadata/gradient
	name          = "Gradient"
	uid           = "sa_metadata_gradient"
	default_value = "none"
	var/icon      = 'icons/mob/hair_gradients.dmi'
	/// A list of text labels for states that need more than just capitalize() to be presentable.
	var/list/selectable_states_to_labels = list(
		"fadeup"                 = "Fade Up",
		"fadedown"               = "Fade Down",
		"vsplit"                 = "Vertical Split",
		"bottomflat"             = "Flat Bottom",
		"fadeup_low"             = "Fade Up (Low)",
		"fadedown_low"           = "Fade Down (Low)",
		"reflected_inverse"      = "Reflected (Inverse)",
		"reflected_high"         = "Reflected (High)",
		"reflected_inverse_high" = "Reflected (Inverse High)"
	)
	/// Inverse of the above, generated at runtime.
	var/list/selectable_labels_to_states = list()

/decl/sprite_accessory_metadata/gradient/Initialize()
	var/list/selectable = icon_states(icon)
	for(var/state in selectable)
		if(!selectable_states_to_labels[state])
			selectable_states_to_labels[state] = capitalize(state)
	for(var/state in selectable_states_to_labels)
		selectable_labels_to_states[selectable_states_to_labels[state]] = state
	return ..()

/decl/sprite_accessory_metadata/gradient/validate()
	. = ..()
	if(!length(selectable_states_to_labels))
		. += "no selectable gradient states"
	else
		if(!(default_value in selectable_states_to_labels))
			. += "default_value '[default_value]' not in selectable list"
		for(var/state in selectable_labels_to_states)
			if(!(selectable_labels_to_states[state] in selectable_states_to_labels))
				. += "label for non-existent state '[state]'"

/decl/sprite_accessory_metadata/gradient/validate_data(value)
	return istext(value) && (value in selectable_states_to_labels)