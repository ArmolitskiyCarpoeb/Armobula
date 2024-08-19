/datum/job/vesta/captain
	title = "Chief Manager"
	supervisors = "the corporation"
	outfit_type = /decl/outfit/job/vesta/captain
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_WEAPONS  = SKILL_ADEPT,
		SKILL_SCIENCE  = SKILL_ADEPT,
		SKILL_PILOT    = SKILL_ADEPT
	)
	max_skill = list(
		SKILL_PILOT   = SKILL_MAX,
		SKILL_WEAPONS = SKILL_MAX
	)
	skill_points = 34
	head_position = 1
	department_types = list(/decl/department/command)
	total_positions = 1
	spawn_positions = 1
	selection_color = "#1d1d4f"
	hud_icon = "hudcaptain"
	req_admin_notify = 1
	access = list()
	minimal_access = list()
//	minimal_player_age = 5
	economic_power = 20
	ideal_character_age = 40
	guestbanned = 1
	must_fill = 1
	not_random_selectable = 1

/datum/job/vesta/captain/equip_job(var/mob/living/human/H)
	. = ..()
	if(H)
		H.newgeneratestats(7,15,7,13,9,17,7,15)

/*
/datum/job/vesta/captain/equip_job(var/mob/living/human/H, var/alt_title, var/datum/mil_branch/branch, var/datum/mil_rank/grade)
	. = ..()
	if(H)
		H.verbs |= /mob/proc/freetradeunion_rename_company
*/

/datum/job/vesta/captain/get_access()
	return get_all_station_access()