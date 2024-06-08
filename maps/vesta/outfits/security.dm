/obj/item/modular_computer/pda/security
	color = COLOR_DARK_RED
	decals = list("stripe" = COLOR_RED_LIGHT)

/decl/hierarchy/outfit/job/vesta/security
	l_ear = /obj/item/radio/headset/headset_sec
	glasses = /obj/item/clothing/glasses/sunglasses/sechud
	gloves = /obj/item/clothing/gloves/thick
	shoes = /obj/item/clothing/shoes/jackboots
	backpack_contents = list(/obj/item/handcuffs = 1)
	name = "vesta - Job - Security Officer"
	uniform = /obj/item/clothing/jumpsuit/security
	l_pocket = /obj/item/flash
	r_pocket = /obj/item/handcuffs
	id_type = /obj/item/card/id/vesta/security
	pda_type = /obj/item/modular_computer/pda/security

/decl/hierarchy/outfit/job/vesta/security/head
	glasses = /obj/item/clothing/glasses/sunglasses/sechud
	l_ear = /obj/item/radio/headset/heads/hos
	gloves = /obj/item/clothing/gloves/thick
	shoes = /obj/item/clothing/shoes/jackboots
	backpack_contents = list(/obj/item/handcuffs = 1)
	name = "vesta - Job - Head of Security"
	uniform = /obj/item/clothing/jumpsuit/security
	l_pocket = /obj/item/flash
	r_pocket = /obj/item/handcuffs
	id_type = /obj/item/card/id/vesta/security
	pda_type = /obj/item/modular_computer/pda/security

/decl/hierarchy/outfit/job/vesta/security/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_SECURITY

/decl/hierarchy/outfit/job/vesta/security/head/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_SECURITY

/obj/item/modular_computer/pda/forensics
	color = COLOR_DARK_RED
	decals = list("stripe" = COLOR_SKY_BLUE)

/obj/item/modular_computer/pda/forensics/install_default_hardware()
	default_hardware |= /obj/item/stock_parts/computer/scanner/reagent
	. = ..()

/decl/hierarchy/outfit/job/vesta/detective
	name = "vesta - Job - Detective"
	head = /obj/item/clothing/head/det
	glasses = /obj/item/clothing/glasses/sunglasses/sechud
	l_ear = /obj/item/radio/headset/headset_sec
	uniform = /obj/item/clothing/pants/slacks/outfit/detective
	suit = /obj/item/clothing/suit/det_trench
	l_pocket = /obj/item/flame/fuelled/lighter/zippo
	shoes = /obj/item/clothing/shoes/dress
	hands = list(/obj/item/briefcase/crimekit)
	id_type = /obj/item/card/id/vesta/security
	pda_type = /obj/item/modular_computer/pda/forensics
	backpack_contents = list(/obj/item/box/evidence = 1)
	gloves = /obj/item/clothing/gloves/thick

/decl/hierarchy/outfit/job/vesta/detective/Initialize()
	. = ..()
	backpack_overrides.Cut()

/obj/item/card/id/vesta/security
	name = "identification card"
	desc = "A card issued to security staff."
	color = COLOR_OFF_WHITE
	detail_color = COLOR_MAROON
