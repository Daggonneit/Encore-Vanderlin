
/obj/structure/fake_machine/headeater
	name = "\improper HEADEATER"
	desc = "A machine that feeds on certain heads for coin. Worth less than selling to the merchantry."
	icon = 'icons/roguetown/misc/machines.dmi'
	icon_state = "headeater"
	density = FALSE
	blade_dulling = DULLING_BASH
	SET_BASE_PIXEL(0, 32)

/obj/structure/fake_machine/headeater/r
	SET_BASE_PIXEL(32, 0)

/obj/structure/fake_machine/headeater/l
	SET_BASE_PIXEL(-32, 0)

/obj/structure/fake_machine/headeater/attackby(obj/item/I, mob/user, list/modifiers)
	if(!is_type_in_list(I, list(/obj/item/natural/head, /obj/item/bodypart/head)))
		return ..()
/*	if(locked())
		to_chat(user, span_warning("It's locked. Of course."))
		return */
	if(I.sellprice <= 0)
		to_chat(user, span_warning("[I] isn't worth selling."))
		return

	visible_message(span_notice("[src] consumes [I], spitting out a reward!"), vision_distance = COMBAT_MESSAGE_RANGE)
	playsound(src, 'sound/gore/flesh_eat_03.ogg', 100,)
	var/reward = round(I.sellprice * 0.65)
	budget2change(reward, user)
	record_round_statistic(STATS_HEADEATER_EXPORTS, reward)
	qdel(I)





/obj/structure/fake_machine/minting_press
	icon = 'icons/roguetown/misc/structure.dmi'
	name = "minting press" //placeholder.
	desc = "An arcayne minting press. When fed an ingot of copper, silver, or gold, it produces a stack of coins."
	icon_state = "imprinter_flick"
	max_integrity = 200
	anchored = TRUE
	SET_BASE_PIXEL(0, 32)



/obj/structure/fake_machine/minting_press/attackby(obj/item/I, mob/user, list/modifiers)
	if(!is_type_in_list(I, list(/obj/item/ingot/copper, /obj/item/ingot/silver, /obj/item/ingot/gold)))
		return ..()
	var/coin_type
	if(istype(I, /obj/item/ingot/copper))
		coin_type = /obj/item/coin/copper
	else if(istype(I, /obj/item/ingot/silver))
		coin_type = /obj/item/coin/silver
	else
		coin_type = /obj/item/coin/gold

	var/obj/item/coin/C = new coin_type(drop_location())
	C.set_quantity(20)
	visible_message(span_notice("[src] consumes [I], minting fresh coins!"), vision_distance = COMBAT_MESSAGE_RANGE)
	qdel(I)
