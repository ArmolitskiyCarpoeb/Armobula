/decl/outfit/job/vesta/captain
	name = "Job - Captain"
	head = /obj/item/clothing/head/caphat
	glasses = /obj/item/clothing/glasses/sunglasses
	uniform = /obj/item/clothing/jumpsuit/captain
	l_ear = /obj/item/radio/headset/heads/captain
	shoes = /obj/item/clothing/shoes/color/brown
	id_type = /obj/item/card/id/gold
//	pda_type = /obj/item/modular_computer/pda/heads/captain

/decl/outfit/job/vesta/captain/Initialize()
	. = ..()
	backpack_overrides[/decl/backpack_outfit/backpack]      = /obj/item/backpack/captain
	backpack_overrides[/decl/backpack_outfit/satchel]       = /obj/item/backpack/satchel
	backpack_overrides[/decl/backpack_outfit/messenger_bag] = /obj/item/backpack/messenger