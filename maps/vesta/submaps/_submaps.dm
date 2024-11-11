#define MAP_TEMPLATE_CATEGORY_VESTA_CAVES   "template_vesta_caves"

/datum/map_template/vesta
	abstract_type = /datum/map_template/vesta
	template_parent_type = /datum/map_template/vesta
	template_flags = TEMPLATE_FLAG_CLEAR_CONTENTS | TEMPLATE_FLAG_NO_RUINS
	area_usage_test_exempted_root_areas = list(
		/area/vesta/caves/point_of_interest
	)
	var/cost = 1

/datum/map_template/vesta/get_template_cost()
	return cost

/area/vesta/caves/point_of_interest
	name = "Point Of Interest"
	description = null
	area_blurb_category = /area/vesta/caves/point_of_interest
