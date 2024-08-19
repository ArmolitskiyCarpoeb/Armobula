///decl/spawnpoint/gateway
//	name = "Gateway"
//	spawn_announcement = "has completed translation from offsite gateway"
//	uid = "spawn_exodus_gateway"

///obj/abstract/landmark/latejoin/gateway
//	spawn_decl = /decl/spawnpoint/gateway

/datum/map/vesta
	default_job_type = /datum/job/vesta/assistant
	default_department_type = /decl/department/civilian
	id_hud_icons = 'maps/exodus/hud.dmi'
	allowed_jobs = list(
		/datum/job/vesta/captain,
		/datum/job/vesta/security/head,
		/datum/job/vesta/security,
		/datum/job/vesta/bartender,
		/datum/job/vesta/chef,
		/datum/job/vesta/hydro,
		/datum/job/vesta/engineer,
		/datum/job/vesta/doctor,
		/datum/job/vesta/cargo,
		/datum/job/mining
	)