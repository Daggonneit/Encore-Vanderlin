/datum/wound/facial
	name = "facial trauma"
	sound_effect = 'sound/combat/crit.ogg'
	severity = WOUND_SEVERITY_SEVERE
	whp = null
	can_sew = TRUE
	sewn_bleed_rate = 0
	can_cauterize = FALSE
	critical = FALSE
	associated_bclasses = STAB_BCLASSES
	viable_zones = list(BODY_ZONE_HEAD)

	// Most of these crits dismember organs and permanently hamper the target, so we're making them harder
	min_damage = 10
	min_damage_dividend = 0.5
	dividend_multi = 10
	damage_divisor = 12

/datum/wound/facial/can_stack_with(datum/wound/other)
	if(istype(other, /datum/wound/facial) && (type == other.type))
		return FALSE
	return TRUE

/datum/wound/facial/ears
	name = "tympanosectomy"
	check_name = "<span class='danger'>EARS</span>"
	crit_message = list(
		"The eardrums are gored!",
		"The eardrums are ruptured!",
	)
	woundpain = 25
	bleed_rate = 4
	can_cauterize = TRUE
	critical = TRUE
	viable_zones = list(BODY_ZONE_PRECISE_EARS)

/datum/wound/facial/ears/can_apply_to_bodypart(obj/item/bodypart/affected)
	if(HAS_TRAIT(affected.owner, TRAIT_CRITICAL_RESISTANCE))
		return FALSE
	. = ..()

/datum/wound/facial/ears/can_apply_to_mob(mob/living/affected)
	. = ..()
	if(!.)
		return
	if(affected.has_wound(/datum/wound/facial/ears))
		return FALSE
	return affected.getorganslot(ORGAN_SLOT_EARS)

/datum/wound/facial/ears/on_mob_gain(mob/living/affected)
	. = ..()
	affected.Stun(10)
	var/obj/item/organ/ears/ears = affected.getorganslot(ORGAN_SLOT_EARS)
	if(ears)
		ears.Remove(affected)
		ears.forceMove(affected.drop_location())

/datum/wound/facial/eyes
	name = "eye evisceration"
	check_name = "<span class='warning'>EYE</span>"
	crit_message = list(
		"The eye is poked!",
		"The eye is gouged!",
		"The eye is destroyed!",
	)
	woundpain = 15
	bleed_rate = 4
	can_cauterize = FALSE
	critical = TRUE
	viable_zones = list(BODY_ZONE_PRECISE_R_EYE, BODY_ZONE_PRECISE_L_EYE)

/datum/wound/facial/eyes/on_mob_gain(mob/living/affected)
	. = ..()
	affected.Stun(10)
	affected.adjust_temp_blindness(10 SECONDS)

/datum/wound/facial/eyes/right
	name = "right eye evisceration"
	check_name = "<span class='danger'>RIGHT EYE</span>"
	crit_message = list(
		"The right eye is poked!",
		"The right eye is gouged!",
		"The right eye is destroyed!",
	)
	viable_zones = list(BODY_ZONE_PRECISE_R_EYE)

/datum/wound/facial/eyes/right/can_apply_to_mob(mob/living/carbon/affected)
	. = ..()
	if(!.)
		return
	if(!istype(affected))
		return
	var/obj/item/organ/eyes/RE = LAZYACCESS(affected.eye_organs, 2)
	return RE

/datum/wound/facial/eyes/right/can_stack_with(datum/wound/other)
	if(istype(other, /datum/wound/facial/eyes/right))
		return FALSE
	return TRUE

/datum/wound/facial/eyes/right/on_mob_gain(mob/living/carbon/affected)
	. = ..()
	var/obj/item/organ/eyes/RE = LAZYACCESS(affected.eye_organs, 2)
	RE.applyOrganDamage(30)
	affected.update_fov_angles()
	if(affected.has_wound(/datum/wound/facial/eyes/left) && affected.has_wound(/datum/wound/facial/eyes/right))
		var/list/eye_list = affected.eye_organs
		for(var/obj/item/organ/eyes/my_eyes as anything in eye_list)
			if(my_eyes)
				my_eyes.Remove(affected)
				my_eyes.forceMove(affected.drop_location())

/datum/wound/facial/eyes/right/on_mob_loss(mob/living/affected)
	. = ..()
	affected.update_fov_angles()

/datum/wound/facial/eyes/right/permanent
	show_in_book = FALSE
	whp = null
	woundpain = 0
	bleed_rate = 0
	can_sew = FALSE
	can_roll = FALSE

/datum/wound/facial/eyes/left
	name = "left eye evisceration"
	check_name = "<span class='danger'>LEFT EYE</span>"
	crit_message = list(
		"The left eye is poked!",
		"The left eye is gouged!",
		"The left eye is destroyed!",
	)
	viable_zones = list(BODY_ZONE_PRECISE_L_EYE)

/datum/wound/facial/eyes/left/can_apply_to_mob(mob/living/carbon/affected)
	. = ..()
	if(!.)
		return
	if(!istype(affected))
		return
	var/obj/item/organ/eyes/LE = LAZYACCESS(affected.eye_organs, 1)
	return LE

/datum/wound/facial/eyes/left/can_stack_with(datum/wound/other)
	if(istype(other, /datum/wound/facial/eyes/left))
		return FALSE
	return TRUE

/datum/wound/facial/eyes/left/on_mob_gain(mob/living/carbon/affected)
	. = ..()
	var/obj/item/organ/eyes/LE = LAZYACCESS(affected.eye_organs, 1)
	LE.applyOrganDamage(30)
	affected.update_fov_angles()
	if(affected.has_wound(/datum/wound/facial/eyes/left) && affected.has_wound(/datum/wound/facial/eyes/right))
		var/list/eye_list = affected.eye_organs
		for(var/obj/item/organ/eyes/my_eyes as anything in eye_list)
			if(my_eyes)
				my_eyes.Remove(affected)
				my_eyes.forceMove(affected.drop_location())

/datum/wound/facial/eyes/left/on_mob_loss(mob/living/affected)
	. = ..()
	affected.update_fov_angles()

/datum/wound/facial/eyes/left/permanent
	show_in_book = FALSE
	whp = null
	woundpain = 0
	bleed_rate = 0
	can_sew = FALSE
	can_roll = FALSE

/datum/wound/facial/tongue
	name = "glossectomy"
	check_name = "<span class='danger'>TONGUE</span>"
	crit_message = list(
		"The tongue is cut!",
		"The tongue is severed!",
		"The tongue flies off in an arc!"
	)
	woundpain = 8
	bleed_rate = 1
	can_cauterize = FALSE
	critical = TRUE
	viable_zones = list(BODY_ZONE_PRECISE_MOUTH)
	var/permanent = FALSE

/datum/wound/facial/tongue/can_apply_to_mob(mob/living/affected)
	. = ..()
	if(!.)
		return
	return affected.getorganslot(ORGAN_SLOT_TONGUE)

/datum/wound/facial/tongue/on_mob_gain(mob/living/affected)
	. = ..()
	affected.Stun(10)
	var/obj/item/organ/tongue/tongue_loss = affected.getorganslot(ORGAN_SLOT_TONGUE)
	if(tongue_loss)
		tongue_loss.Remove(affected)
		if(permanent)
			qdel(tongue_loss)
		else
			tongue_loss.forceMove(affected.drop_location())
	qdel(src)

/datum/wound/facial/tongue/permanent
	show_in_book = FALSE
	whp = null
	woundpain = 0
	bleed_rate = 0
	can_sew = FALSE
	permanent = TRUE
	can_roll = FALSE

/datum/wound/facial/disfigurement
	name = "disfigurement"
	check_name = "<span class='warning'>FACE</span>"
	severity = 0
	crit_message = "The face is mangled beyond recognition!"
	whp = null
	woundpain = 10
	mob_overlay = "cut"
	can_sew = FALSE
	can_cauterize = FALSE
	critical = TRUE
	viable_zones = list(BODY_ZONE_HEAD)

/datum/wound/facial/disfigurement/on_mob_gain(mob/living/affected)
	. = ..()
	ADD_TRAIT(affected, TRAIT_DISFIGURED, "[type]")

/datum/wound/facial/disfigurement/on_mob_loss(mob/living/affected)
	. = ..()
	REMOVE_TRAIT(affected, TRAIT_DISFIGURED, "[type]")

/datum/wound/facial/disfigurement/nose
	name = "rhinotomy"
	check_name = "<span class='warning'>NOSE</span>"
	crit_message = list(
		"The nose is mangled beyond recognition!",
		"The nose is destroyed!",
	)
	mortal = TRUE
	viable_zones = list(BODY_ZONE_PRECISE_NOSE)

/datum/wound/facial/disfigurement/nose/on_mob_gain(mob/living/affected)
	. = ..()
	ADD_TRAIT(affected, TRAIT_MISSING_NOSE, "[type]")

/datum/wound/facial/disfigurement/nose/on_mob_loss(mob/living/affected)
	. = ..()
	REMOVE_TRAIT(affected, TRAIT_MISSING_NOSE, "[type]")

/datum/wound/scarring
	name = "permanent scarring"
	check_name = "<span class='userdanger'><B>SCARRED</B></span>"
	severity = WOUND_SEVERITY_SEVERE
	crit_message = list(
		"The whiplash cuts deep!",
		"The tissue is irreversibly rended!",
		"The %BODYPART is thoroughly disfigured!",
	)
	sound_effect = 'sound/combat/crit.ogg'
	whp = 80
	woundpain = 15
	disabling = TRUE
	critical = TRUE
	sleep_healing = 0
	associated_bclasses = WHIPPING_BCLASSES
	strong_intent_bonus = TRUE
	var/gain_emote = "paincrit"

/datum/wound/scarring/on_mob_gain(mob/living/affected)
	. = ..()
	affected.emote("scream", TRUE)
	affected.Slowdown(20)
	shake_camera(affected, 2, 2)

/datum/wound/scarring/can_stack_with(datum/wound/other)
	if(istype(other, /datum/wound/scarring))
		return FALSE
	return TRUE
