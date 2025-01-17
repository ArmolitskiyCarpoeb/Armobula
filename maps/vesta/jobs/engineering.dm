/datum/job/vesta/engineer
	title = "Engineer"
	supervisors = "the corporation"
	total_positions = 2
	spawn_positions = 2
	outfit_type = /decl/outfit/job/vesta/engineer
	department_types = list(/decl/department/engineering)
	selection_color = "#5b4d20"
	economic_power = 5
//	minimal_player_age = 3
	access = list(
		access_eva,
		access_engine,
		access_engine_equip,
		access_tech_storage,
		access_maint_tunnels,
		access_external_airlocks,
		access_construction,
		access_atmospherics,
		access_emergency_storage,
		access_cameras
	)
	minimal_access = list(
		access_eva,
		access_engine,
		access_engine_equip,
		access_tech_storage,
		access_maint_tunnels,
		access_external_airlocks,
		access_construction,
		access_atmospherics,
		access_emergency_storage,
		access_cameras
	)
	min_skill = list(
		SKILL_LITERACY     = SKILL_ADEPT,
		SKILL_COMPUTER     = SKILL_BASIC,
		SKILL_EVA          = SKILL_BASIC,
		SKILL_CONSTRUCTION = SKILL_ADEPT,
		SKILL_ELECTRICAL   = SKILL_BASIC,
		SKILL_ATMOS        = SKILL_BASIC,
		SKILL_ENGINES      = SKILL_BASIC
	)
	max_skill = list(
		SKILL_CONSTRUCTION = SKILL_MAX,
		SKILL_ELECTRICAL   = SKILL_MAX,
		SKILL_ATMOS        = SKILL_MAX,
		SKILL_ENGINES      = SKILL_MAX
	)
	skill_points = 34
	event_categories = list(ASSIGNMENT_ENGINEER)

/datum/job/vesta/engineer/equip_job(var/mob/living/human/H)
	. = ..()
	if(H)
		H.newgeneratestats(7,15,7,15,9,17,7,15)