// Note: tails only work in humans. They use human-specific parameters and rely on human code for displaying.
/obj/item/organ/tail
	name = "tail"
	desc = "A severed tail. What did you cut this off of?"
	icon_state = "tail-lizard"
	visible_organ = TRUE
	zone = BODY_ZONE_PRECISE_GROIN
	slot = ORGAN_SLOT_TAIL
	organ_efficiency = list(ORGAN_SLOT_TAIL = 100)
	var/can_wag = TRUE
	var/wagging = FALSE

/obj/item/organ/tail/on_mob_remove(mob/living/carbon/organ_owner, special, movement_flags)
	. = ..()

	if(organ_owner.dna?.species)
		organ_owner.dna.species.stop_wagging_tail(organ_owner)

/obj/item/organ/tail/cat
	name = "cat tail"

/obj/item/organ/tail/demihuman
	name = "hollowkin tail"
	icon_state = "tail-furry"

/obj/item/organ/tail/harpy
	name = "harpy plumage"
	accessory_type = /datum/sprite_accessory/tail/hawk

/obj/item/organ/tail/medicator
	name = "vultura plumage"
	accessory_type = /datum/sprite_accessory/tail/medicator

/obj/item/organ/tail/kobold
	name = "small lizard tail"
	accessory_type = /datum/sprite_accessory/tail/kobold

/obj/item/organ/tail/kobold/round
	accessory_type = /datum/sprite_accessory/tail/kobold/round

/obj/item/organ/tail/triton
	name = "triton bell"
	accessory_type = /datum/sprite_accessory/tail/triton

/obj/item/organ/tail/lupian
	name = "lupian tail"

/obj/item/organ/tail/lizard
	name = "sissean tail"
	desc = "A severed lizard tail. Somewhere, no doubt, a lizard hater is very pleased with themselves."
	color = "#116611"
	accessory_type = /datum/sprite_accessory/tail/lizard/smooth
