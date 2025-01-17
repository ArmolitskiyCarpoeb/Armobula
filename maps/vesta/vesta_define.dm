/datum/map/vesta
	name          = "Outland"
	full_name     = "Mining Station 'Outland'"
	path          = "vesta"

	station_name  = "MS 'Outland'"
	station_short = "Outland"
	dock_name     = "OS 'Fatherland'"
	boss_name     = "Central Command"
	boss_short    = "Centcomm"
	company_name  = "Mons-Laden Corporation"
	company_short = "ML"
	system_name   = "Zeta-12"

	overmap_ids = list(OVERMAP_ID_SPACE)
	num_exoplanets = 0

	survival_box_choices    = list()
	passport_type           = null

	allowed_latejoin_spawns = list()

	lobby_screens = list(
		'maps/vesta/lobby/acheron.png'
	)

	lobby_tracks = list(
		/decl/music_track/df_theme
	)

	char_preview_bgstate_options = list(
		"reinforced"
	)

	/decl/backpack_outfit/messanger_bag
		is_default = TRUE

	evac_controller_type = /datum/evacuation_controller/shuttle

//  For /datum/evacuation_controller/shuttle

	shuttle_docked_message = "The public shuttle to %dock_name% has docked with the station. It will depart in approximately %ETD%"
	shuttle_leaving_dock   = "The public shuttle has left the station. Estimate %ETA% until the shuttle docks at %dock_name%."
	shuttle_called_message = "A public shuttle to %dock_name% has been scheduled. It will arrive in approximately %ETA%"
	shuttle_recall_message = "The scheduled shuttle has been cancelled."

//  For /datum/evacuation_controller/starship

//	shuttle_docked_message = "Attention all hands: Jump preparation complete. The subspace drive is now spooling up, secure all stations for departure. Time to jump: approximately %ETD%."
//	shuttle_leaving_dock   = "Attention all hands: Jump initiated, exiting subspace in %ETA%."
//	shuttle_called_message = "Attention all hands: Jump sequence initiated. Transit procedures are now in effect. Jump in %ETA%."
//	shuttle_recall_message = "Attention all hands: Jump sequence aborted, return to normal operating conditions."

	default_telecomms_channels = list(
		COMMON_FREQUENCY_DATA,
		list("name" = "Entertainment", "key" = "z", "frequency" = 1461, "color" = COMMS_COLOR_ENTERTAIN, "span_class" = CSS_CLASS_RADIO, "receive_only" = TRUE),
		list("name" = "Command",       "key" = "c", "frequency" = 1353, "color" = COMMS_COLOR_COMMAND,   "span_class" = "comradio", "secured" = list(access_bridge)),
		list("name" = "Security",      "key" = "s", "frequency" = 1359, "color" = COMMS_COLOR_SECURITY,  "span_class" = "secradio", "secured" = list(access_security)),
		list("name" = "Engineering",   "key" = "e", "frequency" = 1357, "color" = COMMS_COLOR_ENGINEER,  "span_class" = "engradio", "secured" = list(access_engine)),
		list("name" = "Medical",       "key" = "m", "frequency" = 1355, "color" = COMMS_COLOR_MEDICAL,   "span_class" = "medradio", "secured" = list(access_medical)),
		list("name" = "Science",       "key" = "n", "frequency" = 1351, "color" = COMMS_COLOR_SCIENCE,   "span_class" = "sciradio", "secured" = list(access_research)),
		list("name" = "Service",       "key" = "v", "frequency" = 1349, "color" = COMMS_COLOR_SERVICE,   "span_class" = "srvradio", "secured" = list(access_bar)),
		list("name" = "Supply",        "key" = "u", "frequency" = 1347, "color" = COMMS_COLOR_SUPPLY,    "span_class" = "supradio", "secured" = list(access_cargo)),
		list("name" = "Exploration",   "key" = "x", "frequency" = 1361, "color" = COMMS_COLOR_EXPLORER , "span_class" = "EXPradio", "secured" = list(access_eva))
	)
/*
/datum/map/vesta/get_map_info()
	return "МОЯ ЖОПА ГОРИИИТ!!!"
*/

/datum/map/vesta/get_available_submap_archetypes()
	return null // Return list of decl instances when relevant submaps exist.