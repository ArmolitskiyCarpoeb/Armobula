/obj/item/projectile/bullet/chemdart
	name = "dart"
	icon_state = "dart"
	damage = 5
	sharp = 1
	embed = 1 //the dart is shot fast enough to pierce space suits, so I guess splintering inside the target can be a thing. Should be rare due to low damage.
	life_span = 15 //shorter range
	muzzle_type = null
	material = /decl/material/solid/glass
	var/reagent_amount = 15

/obj/item/projectile/bullet/chemdart/Initialize()
	. = ..()
	initialize_reagents()

/obj/item/projectile/bullet/chemdart/initialize_reagents(populate = TRUE)
	create_reagents(reagent_amount)
	. = ..()

/obj/item/projectile/bullet/chemdart/on_hit(var/atom/target, var/blocked = 0, var/def_zone = null)
	if(reagents?.total_volume && blocked < 100 && isliving(target))
		var/mob/living/L = target
		if(L.can_inject(null, def_zone) == CAN_INJECT)
			reagents.trans_to_mob(L, reagent_amount, CHEM_INJECT)

/obj/item/ammo_casing/chemdart
	name = "chemical dart"
	desc = "A small hardened, hollow dart."
	icon_state = "dart"
	caliber = CALIBER_DART
	projectile_type = /obj/item/projectile/bullet/chemdart
	leaves_residue = 0

/obj/item/ammo_casing/chemdart/expend()
	qdel(src)

/obj/item/ammo_magazine/chemdart
	name = "dart cartridge"
	desc = "A rack of hollow darts."
	icon_state = "darts"
	item_state = "rcdammo"
	origin_tech = @'{"materials":2}'
	mag_type = MAGAZINE
	caliber = CALIBER_DART
	ammo_type = /obj/item/ammo_casing/chemdart
	max_ammo = 5
	multiple_sprites = 1

//

/obj/item/ammo_magazine/stunner_cartridge
	name = "stunner cartridge"
	icon_state = "stundarts"
	origin_tech = @'{"combat":2}'
	mag_type = MAGAZINE
	caliber = CALIBER_STUNNER_DART
	material = /decl/material/solid/metal/steel
	ammo_type = /obj/item/ammo_casing/stundart
	max_ammo = 3
	multiple_sprites = 1

/obj/item/ammo_magazine/stunner_cartridge/attackby(obj/item/W, mob/user)
	if(istype(W, /obj/item/ammo_casing))
		to_chat(user, SPAN_NOTICE("You can't insert darts in [src]!"))
		return

/obj/item/ammo_magazine/stunner_cartridge/attack_self(mob/user)
	to_chat(user, SPAN_NOTICE("You can't take darts from [src]!"))
	return


/obj/item/ammo_magazine/stunner_cartridge/attack_hand(mob/user)
	to_chat(user, SPAN_NOTICE("You can't take darts from [src]!"))
	return

/obj/item/ammo_casing/stundart
	name = "chemical dart"
	desc = "A small hardened, hollow dart."
	icon_state = "dart"
	caliber = CALIBER_STUNNER_DART
	projectile_type = /obj/item/projectile/stundart
	leaves_residue = 0

/obj/item/projectile/stundart
	name = "dart"
	icon_state = "dart"
	damage = 4
	sharp = 1
	embed = 1
	life_span = 15 //shorter range
	muzzle_type = null
	material = /decl/material/solid/glass
	stun = 10
	weaken = 10
	agony = 70
	atom_damage_type = BURN
	armor_penetration = 0
	penetration_modifier = 0
	distance_falloff = 5
	penetrating = 0

/obj/item/projectile/stundart/on_hit(var/atom/target, var/blocked = 0, var/def_zone = null, var/obj/item/projectile/stundart)
	if(isliving(target) && blocked < 0.2)
		var/mob/living/L = target
		if(L.can_inject(null, def_zone) == CAN_INJECT)
			L.apply_effects(0, weaken, paralyze, stutter, eyeblur, drowsy, 0, blocked)
			L.stun_effect_act(stun, agony, def_zone, src)
