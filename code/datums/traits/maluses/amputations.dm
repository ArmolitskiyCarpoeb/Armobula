/decl/trait/malus/amputation
	trait_cost = -1
	category = "Missing Limbs"
	abstract_type = /decl/trait/malus/amputation
	reapply_on_rejuvenation = TRUE
	var/list/apply_to_limbs
	var/list/ban_traits_relating_to_limbs

/decl/trait/malus/amputation/build_references()
	if(length(ban_traits_relating_to_limbs))
		var/list/check_traits = decls_repository.get_decls_of_subtype(/decl/trait/malus/amputation)

		// Ban amputations that descend from us.
		for(var/trait_type in check_traits)
			if(trait_type == type)
				continue
			var/decl/trait/malus/amputation/trait = check_traits[trait_type]
			if(!trait.name)
				continue // remove when abstract decl handling from dev is merged
			for(var/limb in trait.apply_to_limbs)
				if(limb in ban_traits_relating_to_limbs)
					LAZYDISTINCTADD(incompatible_with, trait_type)
					LAZYDISTINCTADD(trait.incompatible_with, type)
					break

		// Ban prosthetic types that require this limb to exist.
		check_traits = decls_repository.get_decls_of_subtype(/decl/trait/prosthetic_limb)
		for(var/trait_type in check_traits)
			if(trait_type == type)
				continue
			var/decl/trait/prosthetic_limb/trait = check_traits[trait_type]
			if(trait.apply_to_limb in ban_traits_relating_to_limbs)
				LAZYDISTINCTADD(incompatible_with, trait_type)
				LAZYDISTINCTADD(trait.incompatible_with, type)

	. = ..()

/decl/trait/malus/amputation/applies_to_organ(var/organ)
	return (organ in apply_to_limbs)

/decl/trait/malus/amputation/is_available_to_select(datum/preferences/pref)
	. = ..()
	if(. && pref.bodytype)
		var/decl/bodytype/mob_bodytype = pref.get_bodytype_decl()
		if(!istype(mob_bodytype))
			return FALSE
		for(var/limb in apply_to_limbs)
			if(!(limb in mob_bodytype.has_limbs))
				return FALSE

/decl/trait/malus/amputation/apply_trait(mob/living/holder)
	. = ..()
	if(. && apply_to_limbs)
		for(var/limb in apply_to_limbs)
			var/obj/item/organ/external/O = GET_EXTERNAL_ORGAN(holder, limb)
			if(istype(O))
				holder.remove_organ(O, FALSE, FALSE, FALSE, TRUE, FALSE)
				qdel(O)
		holder.update_body(TRUE)