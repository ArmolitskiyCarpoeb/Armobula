// stunner

/obj/item/gun/projectile/stunner
	name = "stunner"
	desc = "Станнер ML8, стреляющий быстрыми дротиками."
	material = /decl/material/solid/metal/steel
	matter = list(/decl/material/solid/fiberglass = MATTER_AMOUNT_REINFORCEMENT)
	icon = 'icons/obj/guns/stunner.dmi'
	icon_state = ICON_STATE_WORLD
	load_method = MAGAZINE
	accuracy_power = 7
	ammo_indicator = FALSE
	has_safety = FALSE

	fire_sound = 'sound/weapons/empty.wav'
	fire_sound_text = "click"

	origin_tech = @'{"combat":2,"materials":2}'
	w_class = ITEM_SIZE_NORMAL
	screen_shake = 0
	space_recoil = 1
	combustion = 0

	caliber = CALIBER_STUNNER_DART
	handle_casings = CLEAR_CASINGS
	load_method = MAGAZINE

	magazine_type = /obj/item/ammo_magazine/stunner_cartridge
	allowed_magazines = /obj/item/ammo_magazine/stunner_cartridge
	auto_eject = 0
	auto_eject_sound = null
	mag_insert_sound = 'sound/weapons/guns/interaction/pistol_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/pistol_magout.ogg'
	manual_unload = TRUE //Whether or not the gun can be unloaded by hand.

	ammo_indicator = FALSE

/obj/item/gun/projectile/pistol/update_base_icon_state()
	. = ..()
	if(!length(ammo_magazine?.stored_ammo))
		var/empty_state = "[icon_state]-e"
		if(check_state_in_icon(empty_state, icon))
			icon_state = empty_state

/obj/item/gun/projectile/stunner/handle_post_fire()
	playsound(src,'sound/effects/rewind.ogg', 17, 0)