/obj/structure/closet/secure_closet/chaplain
	name = "chaplain's locker"
	icon_state = "chaplainsecure1"
	icon_closed = "chaplainsecure"
	icon_locked = "chaplainsecure1"
	icon_opened = "chaplainsecureopen"
	icon_off = "chaplainsecureoff"
	req_access = list(access_chapel_office)

/obj/structure/closet/secure_closet/chaplain/WillContain()
	return list(
		/obj/item/clothing/jumpsuit/chaplain,
		/obj/item/clothing/shoes/color/black,
		/obj/item/clothing/suit/chaplain_hoodie,
		/obj/item/box/candles = 2,
		/obj/item/box/candles/incense,
		/obj/item/deck/tarot,
		/obj/item/chems/drinks/bottle/holywater,
		/obj/item/nullrod,
		/obj/item/bible,
		/obj/item/belt/general,
		/obj/item/urn
	)