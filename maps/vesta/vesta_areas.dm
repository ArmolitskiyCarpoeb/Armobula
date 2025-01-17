/datum/event/prison_break/medical
	areaType = list(/area/vesta/medical)

/datum/event/prison_break/science
	areaType = list(/area/vesta/research)

/datum/event/prison_break/station
	areaType = list(/area/vesta/security)

//Comments are for my own sanity. PLEASE DONT REMOVE THEM AS IT WAS VERY HARD TO SORT ALL THIS
//Do not remove dots Souther comments

/area/vesta
	secure = TRUE
	holomap_color = HOLOMAP_AREACOLOR_CREW

//COMMAND.

/area/vesta/bridge
	name = "\improper Command Office"
	icon_state = "bridge"
	req_access = list(access_bridge)

/area/vesta/bridge/meeting_room
	name = "\improper General Manager's Office"
	icon_state = "bridge"
	sound_env = MEDIUM_SOFTFLOOR

//CAPTAIN'S QUARTERS.

/area/vesta/crew_quarters/captain
	name = "\improper Chief Manager's Private Room"
	icon_state = "captain"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_captain)

//COMMAND QUARTERS.

/area/vesta/crew_quarters/heads
	icon_state = "head_quarters"
	req_access = list(access_heads)

/area/vesta/crew_quarters/heads/chief
	name = "\improper Engineering - CE's Office"
	req_access = list(access_ce)

/area/vesta/crew_quarters/heads/hos
	name = "\improper Security - Marshal' Office"
	req_access = list(access_hos)

/area/vesta/crew_quarters/heads/hop
	name = "\improper Command - HoP's Office"
	req_access = list(access_hop)

/area/vesta/crew_quarters/heads/cmo
	name = "\improper Command - CMO's Office"
	req_access = list(access_cmo)
	holomap_color = HOLOMAP_AREACOLOR_MEDICAL

//TCOMS.

/area/vesta/maintenance/telecomms
	name = "Telecommunications Sublevel"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_tcomsat)

//SOLAR.

/area/vesta/maintenance/auxsolarWest
	name = "Solar Maintenance - West"
	icon_state = "SolarcontrolP"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine)

/area/vesta/maintenance/auxsolarEast
	name = "Solar Maintenance - East"
	icon_state = "SolarcontrolS"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine)

/area/vesta/solar
	requires_power = 1
	always_unpowered = 1
	has_gravity = FALSE
	base_turf = /turf/space

/area/vesta/solar/auxEast
	name = "\improper North East Solar Array"
	icon_state = "panelsA"

/area/vesta/solar/West
	name = "\improper West Auxiliary Solar Array"
	icon_state = "panelsP"

/area/vesta/solar/East
	name = "\improper East Auxiliary Solar Array"
	icon_state = "panelsS"

/area/vesta/solar/auxWest
	name = "\improper North West Solar Array"
	icon_state = "panelsA"

/area/vesta/solar/North
	name = "\improper North Solar Array"
	icon_state = "yellow"

/area/vesta/maintenance/Northsolar
	name = "\improper Solar Maintenance - North"
	icon_state = "SolarcontrolA"
	sound_env = SMALL_ENCLOSED

/area/vesta/maintenance/Westsolar
	name = "\improper Solar Maintenance - South West"
	icon_state = "SolarcontrolP"
	sound_env = SMALL_ENCLOSED

/area/vesta/maintenance/Eastsolar
	name = "\improper Solar Maintenance - South East"
	icon_state = "SolarcontrolS"
	sound_env = SMALL_ENCLOSED

//STORAGE.

/area/vesta/storage/tech
	name = "Technical Storage"
	icon_state = "storage"
	req_access = list(access_tech_storage)

/area/vesta/storage/primary
	name = "Primary Tool Storage"
	icon_state = "primarystorage"

/area/vesta/storage/tools
	name = "Auxiliary Tool Storage"
	icon_state = "auxstorage"

/area/vesta/storage/art
	name = "Art Supply Storage"
	icon_state = "storage"

/area/vesta/storage/emergency
	name = "East Emergency Storage"
	icon_state = "emergencystorage"
	req_access = list(access_emergency_storage)

/area/vesta/storage/emergency2
	name = "West Emergency Storage"
	icon_state = "emergencystorage"
	req_access = list(access_emergency_storage)

//ENGINEERING.

/area/vesta/engineering
	name = "\improper Engineering"
	icon_state = "engineering"
	ambience = list('sound/ambience/ambisin1.ogg','sound/ambience/ambisin2.ogg','sound/ambience/ambisin3.ogg','sound/ambience/ambisin4.ogg')
	req_access = list(access_engine)
	holomap_color = HOLOMAP_AREACOLOR_ENGINEERING

//Generic
/area/vesta/engineering/foyer
	name = "\improper Engineering Foyer"
	icon_state = "engineering_foyer"

/area/vesta/engineering/locker_room
	name = "\improper Engineering Locker Room"
	icon_state = "engineering_locker"

/area/vesta/engineering/storage
	name = "\improper Engineering Storage"
	icon_state = "engineering_storage"

/area/vesta/engineering/engine_eva
	name = "\improper Engine EVA"
	icon_state = "engine_eva"

//Supermatter
/area/vesta/engineering/engine_monitoring
	name = "\improper Engine Monitoring Room"
	icon_state = "engine_monitoring"

/area/vesta/engineering/engine_airlock
	name = "\improper Engine Room Airlock"
	icon_state = "engine"
	holomap_color = HOLOMAP_AREACOLOR_AIRLOCK

/area/vesta/engineering/engine_room
	name = "\improper Engine Room"
	icon_state = "engine"
	sound_env = LARGE_ENCLOSED

/area/vesta/engineering/engine_waste
	name = "\improper Engine Waste Handling"
	icon_state = "engine_waste"

/area/vesta/engineering/engine_smes
	name = "\improper Engineering SMES"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED

//Monitoring and misc
/area/vesta/engineering/engineering_monitoring
	name = "\improper Engineering Monitoring Room"
	icon_state = "engine_monitoring"

/area/vesta/engineering/break_room
	name = "\improper Engineering Break Room"
	icon_state = "engineering_break"
	sound_env = MEDIUM_SOFTFLOOR

/area/vesta/engineering/dorms
	name = "\improper Engineering Dorms"
	icon_state = "engineering_break"
	sound_env = MEDIUM_SOFTFLOOR

/area/vesta/engineering/drone_fabrication
	name = "\improper Engineering Drone Fabrication"
	icon_state = "drone_fab"
	sound_env = SMALL_ENCLOSED

/area/vesta/engineering/workshop
	name = "\improper Engineering Workshop"
	icon_state = "engineering_workshop"

/area/vesta/engineering/sublevel_access
	name = "\improper Engineering Sublevel Access"

/area/vesta/construction
	name = "\improper Engineering Construction Area"
	icon_state = "yellow"
	req_access = list(access_construction)
	holomap_color = HOLOMAP_AREACOLOR_ENGINEERING

//ATMOSPHERICS.

/area/vesta/engineering/atmos
	name = "\improper Atmospherics"
	icon_state = "atmos"
	sound_env = LARGE_ENCLOSED
	req_access = list(access_atmospherics)

/area/vesta/engineering/atmos/storage
	name = "\improper Atmospherics Storage"
	icon_state = "atmos_storage"
	sound_env = SMALL_ENCLOSED

//MEDICAL.

/area/vesta/medical
	req_access = list(access_medical)
	holomap_color = HOLOMAP_AREACOLOR_MEDICAL

//Reception and such

/area/vesta/medical/reception
	name = "\improper Medbay Reception"
	icon_state = "medbay"
	ambience = list('sound/ambience/signal.ogg')

//Hallways

/area/vesta/medical/medbay_main
	name = "\improper Medbay"
	icon_state = "medbay"
	ambience = list('sound/ambience/signal.ogg')

/area/vesta/medical/medbay
	name = "\improper Medbay Hallway - West"
	icon_state = "medbay"
	ambience = list('sound/ambience/signal.ogg')

/area/vesta/medical/medbay2
	name = "\improper Medbay Hallway - East"
	icon_state = "medbay2"
	ambience = list('sound/ambience/signal.ogg')

/area/vesta/medical/medbay3
	name = "\improper Medbay Hallway - North"
	icon_state = "medbay3"
	ambience = list('sound/ambience/signal.ogg')

/area/vesta/medical/medbay4
	name = "\improper Medbay Hallway - South"
	icon_state = "medbay4"
	ambience = list('sound/ambience/signal.ogg')

//Main

/area/vesta/medical/chemistry
	name = "\improper Chemistry"
	icon_state = "chem"
	req_access = list(access_chemistry)

/area/vesta/medical/morgue
	name = "\improper Morgue"
	icon_state = "morgue"
	ambience = list('sound/ambience/ambimo1.ogg','sound/ambience/ambimo2.ogg','sound/music/main.ogg')
	req_access = list(access_morgue)

/area/vesta/medical/sleeper
	name = "\improper Emergency Treatment Centre"
	icon_state = "exam_room"

//Surgery

/area/vesta/medical/surgery
	name = "\improper Operating Theatre"
	icon_state = "surgery"

/area/vesta/medical/surgery2
	name = "\improper Operating Theatre 2"
	icon_state = "surgery"

/area/vesta/medical/surgeryobs
	name = "\improper Operation Observation Room"
	icon_state = "surgery"

/area/vesta/medical/surgeryprep
	name = "\improper Pre-Op Prep Room"
	icon_state = "surgery"

//Cryo

/area/vesta/medical/cryo
	name = "\improper Cryogenics"
	icon_state = "cryo"

/area/vesta/medical/exam_room
	name = "\improper Exam Room"
	icon_state = "exam_room"

//Misc

/area/vesta/medical/psych
	name = "\improper Psych Room"
	icon_state = "medbay3"
	ambience = list('sound/ambience/signal.ogg')
	req_access = list(access_psychiatrist)

/area/vesta/crew_quarters/medbreak
	name = "\improper Break Room"
	icon_state = "medbay3"
	ambience = list('sound/ambience/signal.ogg')
	req_access = list(access_medical)

/area/vesta/medical/biostorage
	name = "\improper Secondary Storage"
	icon_state = "medbay4"
	ambience = list('sound/ambience/signal.ogg')

//Patient wing

/area/vesta/medical/patient_a
	name = "\improper Isolation A"
	icon_state = "patients"

/area/vesta/medical/patient_b
	name = "\improper Isolation B"
	icon_state = "patients"

/area/vesta/medical/patient_c
	name = "\improper Isolation C"
	icon_state = "patients"

/area/vesta/medical/patient_wing
	name = "\improper Patient Wing"
	icon_state = "patients"

/area/vesta/medical/patient_wing/washroom
	name = "\improper Patient Wing Washroom"
	req_access = list()

/area/vesta/medical/ward
	name = "\improper Recovery Ward"
	icon_state = "patients"

// Virology

/area/vesta/medical/virology
	name = "\improper Virology"
	icon_state = "virology"
	req_access = list(access_virology)

/area/vesta/medical/virology/access
	name = "\improper Virology Access"
	req_access = list() // This is like the lobby, needs low access to allow passing through in a different direction.

//Misc

/area/vesta/research/docking
	name = "\improper Research Dock"
	icon_state = "research_dock"

/area/vesta/research/server
	name = "\improper Research Server Room"
	icon_state = "server"
	req_access = list(access_rd)

//SECURITY.

/area/vesta/security
	area_flags = AREA_FLAG_SECURITY
	req_access = list(access_security)

//Lobby and such

/area/vesta/security/lobby
	name = "\improper Security Lobby"
	icon_state = "security"
	req_access = list()

//Main

/area/vesta/security/dorm
	name = "\improper Security Dorms"
	icon_state = "security"

/area/vesta/security/main
	name = "\improper Security Office"
	icon_state = "security"

/area/vesta/security/meeting
	name = "\improper Security Meeting Room"
	icon_state = "security"

/area/vesta/security/preparation_room
	name = "\improper Security Preparation Room"
	icon_state = "security"

/area/vesta/security/checkpoint2
	name = "\improper Security - Checkpoint"
	icon_state = "checkpoint1"

//Warden and such

/area/vesta/security/armoury
	name = "\improper Security - Armory"
	icon_state = "Warden"
	req_access = list(access_armory)

/area/vesta/security/tactical
	name = "\improper Security - Tactical Equipment"
	icon_state = "Tactical"
	req_access = list(access_armory)

/area/vesta/security/warden
	name = "\improper Security - Warden's Office"
	icon_state = "Warden"
	req_access = list(access_armory)

//Brig

/area/vesta/security/brig
	name = "\improper Security - Brig"
	req_access = list(access_brig)

/area/vesta/security/brig/processing
	name = "\improper Security - Processing"
	icon_state = "brig"

/area/vesta/security/brig/interrogation
	name = "\improper Security - Interrogation"
	icon_state = "brig"

/area/vesta/security/brig/solitaryA
	name = "\improper Security - Solitary 1"
	icon_state = "sec_prison"

/area/vesta/security/brig/solitaryB
	name = "\improper Security - Solitary 2"
	icon_state = "sec_prison"

//Prison

/area/vesta/security/prison
	name = "\improper Security - Prison Wing"
	icon_state = "sec_prison"
	req_access = list(access_brig)
	area_flags = AREA_FLAG_PRISON

/area/vesta/security/prison/restroom
	name = "\improper Security - Prison Wing Restroom"
	icon_state = "sec_prison"

/area/vesta/security/prison/dorm
	name = "\improper Security - Prison Wing Dormitory"
	icon_state = "sec_prison"

//Misc

///area/vesta/security/detectives_office
//	name = "\improper Security - Forensic Office"
//	icon_state = "detective"
//	sound_env = MEDIUM_SOFTFLOOR
//	req_access = list(access_Forensics_lockers)

/area/vesta/security/nuke_storage
	name = "\improper Vault"
	icon_state = "nuke_storage"
	req_access = list(access_heads_vault)

/area/vesta/security/vacantoffice
	name = "\improper Vacant Office"
	icon_state = "security"
	req_access = list()

/area/vesta/security/range
	name = "\improper Security - Firing Range"
	icon_state = "firingrange"

//CARGO.

/area/vesta/quartermaster
	name = "\improper Quartermasters"
	icon_state = "quart"
	req_access = list(access_cargo)
	holomap_color = HOLOMAP_AREACOLOR_CARGO

/area/vesta/quartermaster/cargo_main
	name = "\improper Cargo Main"
	icon_state = "quart"
	req_access = list(list(access_cargo, access_mining))

/area/vesta/quartermaster/office
	name = "\improper Supply Office"
	icon_state = "quartoffice"
	req_access = list(list(access_cargo, access_mining))

/area/vesta/quartermaster/cargo_dorm
	name = "\improper Cargo Dorms"
	icon_state = "quartoffice"
	req_access = list(access_cargo)

/area/vesta/quartermaster/cargo_waste
	name = "\improper Cargo Waste"
	icon_state = "quartoffice"
	req_access = list(access_cargo)

/area/vesta/quartermaster/storage
	name = "\improper Warehouse"
	icon_state = "quartstorage"
	sound_env = LARGE_ENCLOSED

/area/vesta/quartermaster/miningdock
	name = "\improper Cargo Mining Dock"
	icon_state = "mining"
	req_access = list(access_mining)

/area/vesta/quartermaster/mining_refinery
	name = "\improper Cargo Mining Refinery"
	icon_state = "mining"
	req_access = list(access_mining)

/area/vesta/quartermaster/mining_dorm
	name = "\improper Cargo Miners Dorm"
	icon_state = "mining"
	req_access = list(access_mining)

//qm

/area/vesta/quartermaster/qm
	name = "\improper Cargo - Quartermaster's Office"
	icon_state = "quart"
	req_access = list(access_qm)

//CREW.

/area/vesta/crew_quarters
	name = "\improper Dormitories"
	icon_state = "Sleep"

/area/vesta/crew_quarters/sleep
	name = "\improper Dormitories"
	icon_state = "Sleep"

/area/vesta/crew_quarters/sleep/cryo
	name = "\improper Cryogenic Storage"
	icon_state = "Sleep"

/area/vesta/crew_quarters/sleep/bedrooms
	name = "\improper Dormitory Bedroom One"
	icon_state = "Sleep"
	sound_env = SMALL_SOFTFLOOR

/area/vesta/crew_quarters/sleep/bedrooms2
	name = "\improper Dormitory Bedroom Two"
	icon_state = "Sleep"
	sound_env = SMALL_SOFTFLOOR

/area/vesta/crew_quarters/sleep/engi_wash
	name = "\improper Engineering Washroom"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED
	holomap_color = HOLOMAP_AREACOLOR_ENGINEERING

/area/vesta/crew_quarters/locker
	name = "\improper Locker Room"
	icon_state = "locker"

/area/vesta/crew_quarters/locker/locker_toilet
	name = "\improper Locker Toilets"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED

/area/vesta/crew_quarters/toilet
	name = "\improper Dormitory Toilets"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED

/area/vesta/crew_quarters/fitness
	name = "\improper Fitness Room"
	icon_state = "fitness"

/area/vesta/library
	name = "\improper Library"
	icon_state = "library"
	sound_env = LARGE_SOFTFLOOR


//Service and such

/area/vesta/crew_quarters/kitchen
	name = "\improper Kitchen"
	icon_state = "kitchen"
	req_access = list(access_kitchen)

/area/vesta/crew_quarters/bar
	name = "\improper Bar"
	icon_state = "bar"
	sound_env = LARGE_SOFTFLOOR

/area/vesta/crew_quarters/bar/cabin
	name = "\improper Bartender's Room"
	req_access = list(access_bar)

/area/vesta/janitor
	name = "\improper Custodial Closet"
	icon_state = "janitor"
	req_access = list(access_janitor)

/area/vesta/hydroponics
	name = "\improper Hydroponics"
	icon_state = "hydro"
	req_access = list(access_hydroponics)

/area/vesta/hydroponics/garden
	name = "\improper Garden"
	icon_state = "garden"
	req_access = list()

/area/vesta/disposal_room
	name = "\improper Waste Disposal"

/area/vesta/chapel
	area_flags = AREA_FLAG_HOLY

/area/vesta/chapel/main
	name = "\improper Chapel"
	icon_state = "chapel"
	sound_env = LARGE_ENCLOSED
	ambience = list(
		'sound/ambience/ambicha1.ogg',
		'sound/ambience/ambicha2.ogg',
		'sound/ambience/ambicha3.ogg',
		'sound/ambience/ambicha4.ogg',
		'sound/music/traitor.ogg'
	)

/area/vesta/chapel/office
	name = "\improper Chapel Office"
	icon_state = "chapeloffice"
	req_access = list(access_chapel_office)


//SHUTTLE.

/area/shuttle/arrival
	name = "\improper Arrival Shuttle"

/area/shuttle/arrival/station
	icon_state = "shuttle"

/area/shuttle/escape_shuttle
	name = "\improper Emergency Shuttle"

// SUBSTATIONS. (Subtype of maint, that should let them serve as shielded area during radstorm)

/area/vesta/maintenance/substation
	name = "Substation"
	icon_state = "substation"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine)

/area/vesta/maintenance/substation/command // AI and central cluster. This one will be between HoP office and meeting room (probably).
	name = "Command Substation"

/area/vesta/maintenance/substation/engineering // Probably will be connected to engineering SMES room, as wires cannot be crossed properly without them sharing powernets.
	name = "Engineering Substation"

/area/vesta/maintenance/substation/medical // Medbay
	name = "Medical Substation"

/area/vesta/maintenance/substation/research // Research
	name = "Research Substation"

/area/vesta/maintenance/substation/civilian_east // Bar, kitchen, dorms, ...
	name = "Civilian East Substation"

/area/vesta/maintenance/substation/civilian_west // Cargo, PTS, locker room, probably arrivals, ...)
	name = "Civilian West Substation"

/area/vesta/maintenance/substation/security // Security, Brig, Permabrig, etc.
	name = "Security Substation"

/area/vesta/maintenance/substation/atmospherics
	name = "Atmospherics Substation"

//MAINTENANCE.

/area/vesta/maintenance
	area_flags = AREA_FLAG_RAD_SHIELDED
	sound_env = TUNNEL_ENCLOSED
	turf_initializer = /decl/turf_initializer/maintenance
	forced_ambience = list('sound/ambience/maintambience.ogg')
	req_access = list(access_maint_tunnels)
	holomap_color = HOLOMAP_AREACOLOR_MAINTENANCE

/area/vesta/maintenance/atmos_control
	name = "\improper Atmospherics Maintenance"
	icon_state = "fpmaint"
	req_access = list(list(access_atmospherics, access_maint_tunnels))

/area/vesta/maintenance/arrivals
	name = "\improper Arrivals Maintenance"
	icon_state = "maint_arrivals"

/area/vesta/maintenance/bar
	name = "\improper Bar Maintenance"
	icon_state = "maint_bar"
	req_access = list(list(access_bar, access_kitchen, access_maint_tunnels))

/area/vesta/maintenance/cargo
	name = "\improper Cargo Maintenance"
	icon_state = "maint_cargo"
	req_access = list(list(access_cargo, access_maint_tunnels))

/area/vesta/maintenance/engi_engine
	name = "\improper Engine Maintenance"
	icon_state = "maint_engine"

/area/vesta/maintenance/engi_shuttle
	name = "\improper Engineering Shuttle Access"
	icon_state = "maint_e_shuttle"

/area/vesta/maintenance/engineering
	name = "\improper Engineering Maintenance"
	icon_state = "maint_engineering"

/area/vesta/maintenance/evahallway
	name = "\improper EVA Maintenance"
	icon_state = "maint_eva"
	req_access = list(list(access_eva, access_maint_tunnels))

/area/vesta/maintenance/dormitory
	name = "\improper Dormitory Maintenance"
	icon_state = "maint_dormitory"

/area/vesta/maintenance/library
	name = "\improper Library Maintenance"
	icon_state = "maint_library"
	req_access = list(list(access_library, access_maint_tunnels))

/area/vesta/maintenance/locker
	name = "\improper Locker Room Maintenance"
	icon_state = "maint_locker"

/area/vesta/maintenance/medbay
	name = "\improper Medbay Maintenance"
	icon_state = "maint_medbay"
	req_access = list(list(access_medical, access_maint_tunnels))

/area/vesta/maintenance/research_West
	name = "\improper Research Maintenance - West"
	icon_state = "maint_research_West"

/area/vesta/maintenance/research_shuttle
	name = "\improper Research Shuttle Dock Maintenance"
	icon_state = "maint_research_shuttle"

/area/vesta/maintenance/research_East
	name = "\improper Research Maintenance - East"
	icon_state = "maint_research_East"

/area/vesta/maintenance/security_West
	name = "\improper Security Maintenance - West"
	icon_state = "maint_security_West"

/area/vesta/maintenance/security_East
	name = "\improper Security Maintenance - East"
	icon_state = "maint_security_East"

/area/vesta/maintenance/security
	name = "\improper Security Maintenance"
	icon_state = "maint_security"

//MISC. MAINTENANCE.

/area/vesta/maintenance/exterior
	name = "\improper Exterior Reinforcements"
	icon_state = "maint_security_East"
	has_gravity = FALSE
	turf_initializer = /decl/turf_initializer/maintenance/space
	req_access = list(list(access_security, access_engine)) //whatever

/area/vesta/maintenance/disposal
	name = "Waste Disposal"
	icon_state = "disposal"

/area/vesta/maintenance/incinerator
	name = "\improper Incinerator"
	icon_state = "disposal"

//SUBLEVEL MAINTENANCE.

/area/vesta/maintenance/sub
	turf_initializer = /decl/turf_initializer/maintenance/heavy
	ambience = list(
		'sound/ambience/ambiatm1.ogg',
		'sound/ambience/ambigen3.ogg',
		'sound/ambience/ambigen4.ogg',
		'sound/ambience/ambigen5.ogg',
		'sound/ambience/ambigen6.ogg',
		'sound/ambience/ambigen7.ogg',
		'sound/ambience/ambigen8.ogg',
		'sound/ambience/ambigen9.ogg',
		'sound/ambience/ambigen10.ogg',
		'sound/ambience/ambigen11.ogg',
		'sound/ambience/ambigen12.ogg',
		'sound/ambience/ambimine.ogg',
		'sound/ambience/ambimo2.ogg',
		'sound/ambience/ambisin4.ogg',
		'sound/effects/wind/wind_2_1.ogg',
		'sound/effects/wind/wind_2_2.ogg',
		'sound/effects/wind/wind_3_1.ogg',
	)

/area/vesta/maintenance/sub/relay_station
	name = "\improper Sublevel Maintenance - Relay Station"
	icon_state = "blue2"
	turf_initializer = null
	req_access = list(access_engine)

/area/vesta/maintenance/sub/North
	name = "\improper Sublevel Maintenance - North"
	icon_state = "sub_maint_North"

/area/vesta/maintenance/sub/South
	name = "\improper Sublevel Maintenance - South"
	icon_state = "sub_maint_South"

/area/vesta/maintenance/sub/West
	name = "\improper Sublevel Maintenance - West"
	icon_state = "sub_maint_West"

/area/vesta/maintenance/sub/East
	name = "\improper Sublevel Maintenance - East"
	icon_state = "sub_maint_East"

/area/vesta/maintenance/sub/central
	name = "\improper Sublevel Maintenance - Central"
	icon_state = "sub_maint_central"

/area/vesta/maintenance/sub/command
	name = "\improper Sublevel Maintenance - Command"
	icon_state = "sub_maint_command"
	turf_initializer = null

/////////////
//ELEVATORS//
/////////////

/area/turbolift/security_station
	name = "Station - By Security"
	lift_announce_str = "Arriving at the station level, by the Security department."

/area/turbolift/security_maintenance
	name = "Maintenance - Below Security"
	lift_announce_str = "Arriving at the maintenance level, below the Security department."
	base_turf = /turf/floor/plating

/area/turbolift/research_station
	name = "Station - By Research"
	lift_announce_str = "Arriving at the station level, by the R&D department."

/area/turbolift/research_maintenance
	name = "Maintenance - Below Research"
	lift_announce_str = "Arriving at the maintenance level, below the R&D department."
	base_turf = /turf/floor/plating

/area/turbolift/engineering_station
	name = "Station - By Engineering"
	lift_announce_str = "Arriving at the station level, by the Engineering department."

/area/turbolift/engineering_maintenance
	name = "Maintenance - Below Engineering"
	lift_announce_str = "Arriving at the maintenance level, below the Engineering department."
	base_turf = /turf/floor/plating

/area/turbolift/cargo_station
	name = "Station - By Cargo"
	lift_announce_str = "Arriving at the station level, by the Cargo department."

/area/turbolift/cargo_maintenance
	name = "Maintenance - Below Cargo"
	lift_announce_str = "Arriving at the maintenance level, below the Cargo department."
	base_turf = /turf/floor/plating

/////////////////
//ELEVATORS END//
/////////////////

//HALLWAYS.

/area/vesta/hallway
	area_flags = AREA_FLAG_HALLWAY

/area/vesta/hallway/primary
	sound_env = LARGE_ENCLOSED

/area/vesta/hallway/primary/north
	name = "\improper North Primary Hallway"
	icon_state = "hallF"

/area/vesta/hallway/primary/east
	name = "\improper East Primary Hallway"
	icon_state = "hallS"

/area/vesta/hallway/primary/south
	name = "\improper South Primary Hallway"
	icon_state = "hallA"

/area/vesta/hallway/primary/west
	name = "\improper West Primary Hallway"
	icon_state = "hallP"

/area/vesta/hallway/primary/central_one
	name = "\improper Central Primary Hallway"
	icon_state = "hallC1"

/area/vesta/hallway/primary/central_two
	name = "\improper Central Primary Hallway"
	icon_state = "hallC2"

/area/vesta/hallway/primary/central_three
	name = "\improper Central Primary Hallway"
	icon_state = "hallC3"

/area/vesta/hallway/secondary/exit
	name = "\improper Escape Shuttle Hallway"
	icon_state = "escape"

/area/vesta/hallway/secondary/entry/pods
	name = "\improper Arrival Shuttle Hallway - Escape Pods"
	icon_state = "entry_pods"

/area/vesta/hallway/secondary/entry/North
	name = "\improper Arrival Shuttle Hallway - North"
	icon_state = "entry_1"

/area/vesta/hallway/secondary/entry/West
	name = "\improper Arrival Shuttle Hallway - West"
	icon_state = "entry_2"

/area/vesta/hallway/secondary/entry/East
	name = "\improper Arrival Shuttle Hallway - East"
	icon_state = "entry_3"

/area/vesta/hallway/secondary/entry/South
	name = "\improper Arrival Shuttle Hallway - South"
	icon_state = "entry_4"
/*
//TELEWestER.

/area/vesta/teleWester
	name = "\improper TeleWester"
	icon_state = "teleWester"
	req_access = list(access_teleWester)

/area/vesta/gateway
	name = "\improper Gateway"
	icon_state = "teleWester"
*/
// Thunderdome

/area/tdome
	name = "\improper Thunderdome"
	icon_state = "thunder"
	requires_power = 0
	dynamic_lighting = 0
	sound_env = ARENA
	req_access = list(access_cent_thunder)

/area/tdome/tdome1
	name = "\improper Thunderdome (Team 1)"
	icon_state = "green"

/area/tdome/tdome2
	name = "\improper Thunderdome (Team 2)"
	icon_state = "yellow"

/area/tdome/tdomeadmin
	name = "\improper Thunderdome (Admin.)"
	icon_state = "purple"

/area/tdome/tdomeobserve
	name = "\improper Thunderdome (Observer.)"
	icon_state = "purple"

/area/centcom
	name = "\improper Centcom"
	icon_state = "centcom"
	requires_power = FALSE
	dynamic_lighting = FALSE
	req_access = list(access_cent_general)

/area/centcom/holding
	name = "\improper Holding Facility"

/area/centcom/arrivals
	name = "\improper Centcomm Arrivals"

/area/centcom/evacuation_dock
	name = "\improper Centcomm Evacuation Shuttle Docks"

///area/shuttle/supply_shuttle
//	name = "Supply Shuttle"
//	icon_state = "shuttle3"
//	req_access = list(access_cargo)

/area/vesta/supply_dock
	name = "Supply Shuttle Dock"
	icon_state = "yellow"
	base_turf = /turf/floor/plating

/area/vesta/supply
	name = "Supply Shuttle"
	icon_state = "shuttle3"
	req_access = list(access_cargo)
	requires_power = 0

/area/shuttle/escape_shuttle
	name = "\improper Emergency Shuttle"
	icon_state = "shuttle"

/area/ship/shuttle_arrival
	name = "\improper Arrival Shuttle"

/area/ship/arrivals_shuttle
	name = "\improper Arrival Shuttle"

/area/ship/escape
	name = "\improper Escape Shuttle"