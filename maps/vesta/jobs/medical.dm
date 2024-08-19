/datum/job/vesta/doctor
	title = "Medical Doctor"
	department_types = list(/decl/department/medical)
	head_position = 0
	supervisors = "the corporation"
	total_positions = 3
	spawn_positions = 2
	skill_points = 34
	min_skill = list(
		SKILL_LITERACY  = SKILL_ADEPT,
		SKILL_MEDICAL   = SKILL_EXPERT,
		SKILL_ANATOMY   = SKILL_EXPERT,
		SKILL_CHEMISTRY = SKILL_BASIC
	)
	max_skill = list(
		SKILL_MEDICAL   = SKILL_MAX,
		SKILL_ANATOMY   = SKILL_MAX,
		SKILL_CHEMISTRY = SKILL_MAX
	)
	selection_color = "#013d3b"
	economic_power = 7
	access = list(
		access_medical,
		access_medical_equip,
		access_morgue,
		access_surgery,
		access_chemistry,
		access_virology,
		access_cameras
	)
	minimal_access = list(
		access_medical,
		access_medical_equip,
		access_morgue,
		access_surgery,
		access_virology,
		access_cameras
	)
	outfit_type = /decl/outfit/job/vesta/doctor
	minimal_player_age = 3
	event_categories = list(ASSIGNMENT_MEDICAL)

/datum/job/vesta/doctor/equip_job(var/mob/living/human/H)
	. = ..()
	if(H)
		H.newgeneratestats(6,13,6,13,11,18,6,13)