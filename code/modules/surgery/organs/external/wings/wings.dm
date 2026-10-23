/obj/item/organ/wings
	name = "wings"
	desc = "A pair of wings. Those may or may not allow you to fly... or at the very least flap."
	visible_organ = TRUE
	zone = BODY_ZONE_CHEST
	slot = ORGAN_SLOT_WINGS
	organ_efficiency = list(ORGAN_SLOT_WINGS = 100)

	///Whether a wing can be opened by the *wing emote. The sprite use a "_open" suffix, before their layer
	var/can_open = TRUE
	///Whether an openable wing is currently opened
	var/wings_open = FALSE

/obj/item/organ/wings/dracon
	name = "drakian wings"
	desc = "A pair of majestic drakian wings."

/obj/item/organ/wings/dracon/on_mob_insert(mob/living/carbon/organ_owner, special = FALSE, movement_flags)
	..()
	ADD_TRAIT(organ_owner, TRAIT_NOFALLDAMAGE1, "[type]")
	ADD_TRAIT(organ_owner, TRAIT_ZJUMP, "[type]")

/obj/item/organ/wings/dracon/on_mob_remove(mob/living/carbon/organ_owner, special = FALSE, movement_flags)
	REMOVE_TRAIT(organ_owner, TRAIT_NOFALLDAMAGE1, "[type]")
	REMOVE_TRAIT(organ_owner, TRAIT_ZJUMP, "[type]")
	..()
