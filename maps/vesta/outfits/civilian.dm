/decl/outfit/job/vesta/cargo
	l_ear = /obj/item/radio/headset/headset_cargo
	name = "vesta - Job - Cargo technician"
	uniform = /obj/item/clothing/jumpsuit/cargotech
	id_type = /obj/item/card/id/vesta/cargo
	pda_type = /obj/item/modular_computer/pda/cargo
	backpack_contents = list(/obj/item/crowbar = 1, /obj/item/ore = 1)
	outfit_flags = OUTFIT_HAS_BACKPACK | OUTFIT_EXTENDED_SURVIVAL | OUTFIT_HAS_VITALS_SENSOR

/decl/outfit/job/vesta/cargo/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/outfit/job/vesta/bartender
	l_ear = /obj/item/radio/headset/headset_service
	name = "vesta - Job - Bartender"
	uniform = /obj/item/clothing/pants/formal/black/outfit
	id_type = /obj/item/card/id/vesta/bartender
	pda_type = /obj/item/modular_computer/pda
	head = /obj/item/clothing/head/chefhat

/decl/outfit/job/vesta/janitor
	l_ear = /obj/item/radio/headset/headset_service
	name = "vesta - Job - Janitor"
	uniform = /obj/item/clothing/jumpsuit/janitor
	id_type = /obj/item/card/id/vesta/janitor
	pda_type = /obj/item/modular_computer/pda

/decl/outfit/job/vesta/librarian
	l_ear = /obj/item/radio/headset/headset_service
	name = "vesta - Job - Librarian"
	uniform = /obj/item/clothing/pants/slacks/red/outfit
	id_type = /obj/item/card/id/vesta/librarian
	pda_type = /obj/item/modular_computer/pda

//cards
/obj/item/card/id/vesta/cargo
	name = "identification card"
	desc = "A card issued to cargo staff."
	icon_state = "cargo"

/obj/item/card/id/vesta/bartender
	desc = "A card issued to kitchen staff."

/obj/item/card/id/vesta/janitor
	desc = "A card issued to custodial staff."

/obj/item/card/id/vesta/librarian
	desc = "A card issued to the station librarian."
