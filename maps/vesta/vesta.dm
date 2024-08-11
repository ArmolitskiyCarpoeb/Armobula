#if !defined(USING_MAP_DATUM)

	#include "../../mods/content/mundane.dm"
	#include "../../mods/content/bigpharma/_bigpharma.dme"
	#include "../../mods/content/corporate/_corporate.dme"
	#include "../../mods/content/government/_government.dme"
	#include "../../mods/content/modern_earth/_modern_earth.dme"
	#include "../../mods/content/scaling_descriptors.dm"
	#include "../../mods/content/xenobiology/_xenobiology.dme"

	#include "../../mods/mobs/borers/_borers.dme"

//	#include "jobs/_goals.dm"
	#include "jobs/command.dm"
	#include "jobs/civilian.dm"
	#include "jobs/engineering.dm"
	#include "jobs/medical.dm"
	#include "jobs/science.dm"
	#include "jobs/security.dm"
//	#include "jobs/synthetics.dm"

	#include "vesta_announcements.dm"
	#include "vesta_cameras.dm"
	#include "vesta_areas.dm"
	#include "vesta_departments.dm"
	#include "vesta_jobs.dm"
	#include "vesta_overmap.dm"
	#include "vesta_setup.dm"
	#include "vesta_shuttles.dm"
//	#include "vesta_unit_testing.dm"

	#include "outfits/_pda.dm"
//	#include "outfits/cargo.dm"
	#include "outfits/civilian.dm"
	#include "outfits/command.dm"
	#include "outfits/engineering.dm"
	#include "outfits/medical.dm"
	#include "outfits/science.dm"
	#include "outfits/security.dm"

	#include "vesta.dmm"
	#include "vesta-admin.dmm"
	#include "vesta-transit.dmm"

	#define USING_MAP_DATUM /datum/map/vesta

#elif !defined(MAP_OVERRIDE)
	#warn A map has already been included, ignoring Vesta
#endif
