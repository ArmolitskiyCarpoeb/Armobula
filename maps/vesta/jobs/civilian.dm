/datum/job/vesta/assistant
	title = "Assistant"
	total_positions = -1
	spawn_positions = -1
	supervisors = "the corporation"
	economic_power = 1
	access = list()
	minimal_access = list()
	hud_icon = "hudassistant"
//	alt_titles = list("Engineer Assistant","Medical Intern","Security Cadet")
	outfit_type = /decl/outfit/job/vesta/assistant
	department_types = list(/decl/department/civilian)
	event_categories = list(ASSIGNMENT_GARDENER)
	skill_points = 32

/datum/job/vesta/assistant/equip_job(var/mob/living/human/H)
	. = ..()
	if(H)
		H.newgeneratestats(8,16,8,16,8,16,8,16)

/datum/job/vesta/assistant/get_access()
	if(get_config_value(/decl/config/toggle/assistant_maint))
		return list(access_maint_tunnels)
	return list()

/datum/job/vesta/bartender
	title = "Bartender"
//	alt_titles = list("Cook","Barista")
	supervisors = "the corporation"
	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/outfit/job/vesta/bartender
	department_types = list(/decl/department/service)
	selection_color = "#3fbe4a"
	economic_power = 5
	access = list(
		access_hydroponics,
		access_bar,
		access_kitchen
	)
	minimal_access = list(
		access_hydroponics,
		access_bar,
		access_kitchen
	)
	min_skill = list(
		SKILL_COOKING	= SKILL_BASIC,
		SKILL_BOTANY	= SKILL_BASIC,
		SKILL_CHEMISTRY	= SKILL_BASIC
	)
	max_skill = list(
		SKILL_COOKING	= SKILL_MAX,
		SKILL_BOTANY	= SKILL_MAX
	)
	skill_points = 30

/datum/job/vesta/bartender/equip_job(var/mob/living/human/H)
	. = ..()
	if(H)
		H.newgeneratestats(9,15,9,13,9,14,10,16)

/datum/job/chef
	title = "Chef"
	department_types = list(/decl/department/service)
	total_positions = 1
	spawn_positions = 1
	supervisors = "the corporation"
	access = list(
		access_hydroponics,
		access_bar,
		access_kitchen
	)
	minimal_access = list(access_kitchen)
	alt_titles = list("Cook")
	outfit_type = /decl/outfit/job/service/chef
	min_skill = list(
		SKILL_LITERACY  = SKILL_ADEPT,
		SKILL_COOKING   = SKILL_ADEPT,
	    SKILL_BOTANY    = SKILL_BASIC,
	    SKILL_CHEMISTRY = SKILL_BASIC
	)
	skill_points = 30

/datum/job/vesta/chef/equip_job(var/mob/living/human/H)
	. = ..()
	if(H)
		H.newgeneratestats(8,15,8,13,8,14,9,16)

/datum/job/hydro
	title = "Hydroponicist"
	department_types = list(/decl/department/service)
	total_positions = 1
	spawn_positions = 1
	supervisors = "the corporation"
	access = list(
		access_hydroponics,
		access_bar,
		access_kitchen
	)
	minimal_access = list(access_hydroponics)
	alt_titles = list("Botanist")
	outfit_type = /decl/outfit/job/service/gardener
	min_skill = list(
		SKILL_LITERACY  = SKILL_ADEPT,
		SKILL_BOTANY    = SKILL_BASIC,
	    SKILL_CHEMISTRY = SKILL_BASIC
	)
	event_categories = list(ASSIGNMENT_GARDENER)

/datum/job/vesta/hydro/equip_job(var/mob/living/human/H)
	. = ..()
	if(H)
		H.newgeneratestats(6,12,7,13,10,15,6,14)

/datum/job/vesta/cargo
	title = "Cargo Technician"
	supervisors = "the corporation"
	total_positions = 2
	spawn_positions = 1
	outfit_type = /decl/outfit/job/vesta/cargo
	department_types = list(/decl/department/service)
	selection_color = "#8a7c00"
	economic_power = 5
	access = list(
		access_cargo,
		access_cargo_bot,
		access_mining,
		access_mailsorting,
		access_mining,
		access_mining_station,
		access_external_airlocks,
		access_eva
	)
	minimal_access = list(
		access_cargo,
		access_cargo_bot,
		access_mining,
		access_mailsorting,
		access_eva,
		access_mining,
		access_mining_station,
		access_external_airlocks
	)
	min_skill = list(
		SKILL_FINANCE	= SKILL_BASIC,
		SKILL_HAULING	= SKILL_ADEPT,
		SKILL_EVA		= SKILL_BASIC,
		SKILL_COMPUTER	= SKILL_BASIC,
		SKILL_LITERACY	= SKILL_BASIC
	)
	max_skill = list(
		SKILL_HAULING	= SKILL_MAX,
		SKILL_EVA		= SKILL_MAX,
		SKILL_FINANCE	= SKILL_MAX
	)
	skill_points = 32
	software_on_spawn = list(
		/datum/computer_file/program/supply,
		/datum/computer_file/program/deck_management,
		/datum/computer_file/program/reports
	)

/datum/job/vesta/cargo/equip_job(var/mob/living/human/H)
	. = ..()
	if(H)
		H.newgeneratestats(9,14,9,15,9,12,10,14)

/datum/job/mining
	title = "Shaft Miner"
	department_types = list(/decl/department/supply)
	total_positions = 4
	spawn_positions = 4
	supervisors = "the corporation"
	economic_power = 5
	access = list(
		access_maint_tunnels,
		access_mailsorting,
		access_cargo,
		access_cargo_bot,
		access_qm,
		access_mining,
		access_mining_station
	)
	minimal_access = list(
		access_mining,
		access_mining_station,
		access_mailsorting
	)
	outfit_type = /decl/outfit/job/cargo/mining
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_HAULING  = SKILL_ADEPT,
	    SKILL_EVA      = SKILL_BASIC
	)
	skill_points = 32

/datum/job/vesta/mining/equip_job(var/mob/living/human/H)
	. = ..()
	if(H)
		H.newgeneratestats(11,18,8,14,6,12,11,18)