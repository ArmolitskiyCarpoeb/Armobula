/datum/job/vesta/security
	title = "Security Officer"
	supervisors = "the Marshal and the corporation"
	spawn_positions = 2
	total_positions = 3
	outfit_type = /decl/outfit/job/vesta/security
	department_types = list(/decl/department/security)
	selection_color = "#990000"
	economic_power = 6
	minimal_player_age = 3
	access = list(
		access_security,
		access_brig,
		access_lawyer,
		access_maint_tunnels,
		access_cameras
	)
	minimal_access = list(
		access_security,
		access_forensics_lockers,
		access_maint_tunnels,
		access_lawyer,
		access_brig,
		access_cameras
	)
	min_skill = list(
		SKILL_LITERACY = SKILL_BASIC,
		SKILL_COMPUTER = SKILL_BASIC,
		SKILL_COMBAT	= SKILL_BASIC,
		SKILL_WEAPONS	= SKILL_BASIC
	)
	max_skill = list(
		SKILL_COMBAT	= SKILL_MAX,
		SKILL_WEAPONS	= SKILL_MAX
	)
	skill_points = 32
	event_categories = list(ASSIGNMENT_SECURITY)

/datum/job/vesta/security/equip_job(var/mob/living/human/H)
	. = ..()
	if(H)
		H.newgeneratestats(11,18,10,15,8,15,11,18)

/datum/job/vesta/security/head
	title = "Marshal"
	supervisors = "the Chief Manager and the corporation"
	outfit_type = /decl/outfit/job/vesta/security/head
	head_position = 1
	department_types = list(
		/decl/department/security,
		/decl/department/command
	)
	total_positions = 1
	spawn_positions = 1
	selection_color = "#9d2300"
	req_admin_notify = 1
	minimal_player_age = 14
	economic_power = 10
	ideal_character_age = 40
	guestbanned = 1
	not_random_selectable = 1
	hud_icon = "hudhos"
	access = list(
		access_security,
		access_sec_doors,
		access_brig,
		access_eva,
		access_forensics_lockers,
		access_heads,
		access_lawyer,
		access_maint_tunnels,
		access_armory,
		access_engine_equip,
		access_mining,
		access_kitchen,
		access_robotics,
		access_hydroponics,
		access_hos,
		access_cameras
	)
	minimal_access = list(
		access_security,
		access_sec_doors,
		access_brig,
		access_lawyer,
		access_eva,
		access_forensics_lockers,
		access_heads,
		access_maint_tunnels,
		access_armory,
		access_engine_equip,
		access_mining,
		access_kitchen,
		access_robotics,
		access_hydroponics,
		access_hos,
		access_cameras
	)
	min_skill = list(
		SKILL_LITERACY = SKILL_BASIC,
		SKILL_COMPUTER = SKILL_BASIC,
		SKILL_COMBAT	= SKILL_ADEPT,
		SKILL_WEAPONS	= SKILL_ADEPT
	)
	max_skill = list(
		SKILL_COMBAT	= SKILL_MAX,
		SKILL_WEAPONS	= SKILL_MAX
	)
	skill_points = 40
//	alt_titles = list("Security Commander")

/datum/job/vesta/head/equip_job(var/mob/living/human/H)
	. = ..()
	if(H)
		H.newgeneratestats(8,18,8,16,10,15,8,18)