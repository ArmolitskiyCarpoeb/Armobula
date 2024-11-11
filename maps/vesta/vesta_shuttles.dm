/datum/shuttle/autodock/ferry/emergency/escape_shuttle
	name = "Escape Shuttle"
	warmup_time = 10
	location = 1
	dock_target = "escape_shuttle"
	shuttle_area = /area/shuttle/escape_shuttle
	waypoint_offsite = "nav_escape_shuttle_start"
	waypoint_station = "nav_escape_shuttle_station"
	landmark_transition = "nav_escape_shuttle_transit"

/obj/effect/shuttle_landmark/escape_shuttle/start
	landmark_tag = "nav_escape_shuttle_start"
	docking_controller = "centcom_escape_dock"

/obj/effect/shuttle_landmark/escape_shuttle/transit
	landmark_tag = "nav_escape_shuttle_transit"
	base_turf = /turf/space

/obj/effect/shuttle_landmark/escape_shuttle/station
	landmark_tag = "nav_escape_shuttle_station"
	docking_controller = "escape_dock"
	base_area = /area/ship/escape
	base_turf = /turf/floor/plating

// supply

/datum/shuttle/autodock/ferry/supply/cargo
	name = "Supply"
	warmup_time = 10
	location = 1
	dock_target = "supply_shuttle"
	shuttle_area = /area/vesta/supply
	waypoint_offsite = "nav_cargo_start"
	waypoint_station = "nav_cargo_station"

/obj/effect/shuttle_landmark/supply/start
	landmark_tag ="nav_cargo_start"

/obj/effect/shuttle_landmark/supply/station
	landmark_tag = "nav_cargo_station"
	docking_controller = "cargo_bay"
	base_area = /area/vesta/supply_dock
	base_turf = /turf/floor/plating

// arrival
/*
/obj/machinery/computer/shuttle_control/ferry/arrival
	name = "arrival shuttle control console"
	shuttle_tag = "Arrival Shuttle"

/datum/shuttle/autodock/ferry/arrival
	name = "Arrival Shuttle"
	warmup_time = 10
	location = 0
	shuttle_area = /area/ship/shuttle_arrival
	dock_target = "arrival_shuttle"
	waypoint_offsite = "nav_arrival_shuttle_start"
	waypoint_station = "nav_arrival_shuttle_station"

/area/ship/arrival_shuttle
	name = "Arrival Shuttle"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/obj/effect/shuttle_landmark/arrival/start
	landmark_tag = "nav_arrival_shuttle_start"
	docking_controller = "arrival_centcom"

/obj/effect/shuttle_landmark/arrival/station
	landmark_tag = "nav_arrival_shuttle_station"
	docking_controller = "arrival"
*/
// arrival TRUE

/datum/shuttle/autodock/ferry/arrivals/vesta
	name = "Arrivals"
	location = 1
	shuttle_area = /area/ship/shuttle_arrival
	waypoint_offsite = "arrivals_offsite"
	waypoint_station = "arrivals_station"
	landmark_transition = "arrivals_transit"
	dock_target = "arrivals_shuttle"
	ceiling_type = /turf/floor/reinforced

/obj/effect/shuttle_landmark/vesta/arrivals_offsite
	name = "Transit to Station"
	landmark_tag = "arrivals_offsite"
//	base_area = /area/space
	base_turf = /turf/space
	docking_controller = "centcom_arrival_dock"

/obj/effect/shuttle_landmark/vesta/arrivals_station
	name = "Arrivals Pad"
	landmark_tag = "arrivals_station"
	docking_controller = "arrivals_dock"
	base_area = /area/ship/arrivals_shuttle
	base_turf = /turf/floor/plating

/obj/effect/shuttle_landmark/vesta/arrivals_transit
	landmark_tag = "arrivals_transit"
	base_turf = /turf/space