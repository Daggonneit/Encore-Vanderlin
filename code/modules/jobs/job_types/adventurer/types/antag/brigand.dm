/datum/attribute_holder/sheet/job/brigand
	raw_attribute_list = list(
		STAT_STRENGTH = 4,
		STAT_ENDURANCE = 3,
		STAT_CONSTITUTION = 4,
		/datum/attribute/skill/combat/polearms = 40,
		/datum/attribute/skill/combat/axesmaces = 40,
		/datum/attribute/skill/combat/shields = 40,
		/datum/attribute/skill/combat/wrestling = 30,
		/datum/attribute/skill/combat/unarmed = 30,
		/datum/attribute/skill/combat/swords = 20,
		/datum/attribute/skill/combat/whipsflails = 40,
		/datum/attribute/skill/combat/knives = 20,
		/datum/attribute/skill/combat/bows = 20,
		/datum/attribute/skill/combat/crossbows = 40,
		/datum/attribute/skill/craft/crafting = 20,
		/datum/attribute/skill/craft/carpentry = 10,
		/datum/attribute/skill/misc/reading = 10,
		/datum/attribute/skill/misc/climbing = 30,
		/datum/attribute/skill/misc/athletics = 30,
		/datum/attribute/skill/misc/swimming = 30,
		/datum/attribute/skill/misc/sewing = 20,
		/datum/attribute/skill/misc/medicine = 30,
		/datum/attribute/skill/craft/weapon_repair = 20,
		/datum/attribute/skill/craft/armor_repair = 20,
	)

/datum/attribute_holder/sheet/job/brigand/unarmed
	raw_attribute_list = list(
		/datum/attribute/skill/combat/unarmed = 10,
	)
/datum/attribute_holder/sheet/job/brigand/greatsword
	raw_attribute_list = list(
		/datum/attribute/skill/combat/swords = 20,
	)

/datum/job/advclass/bandit/brigand //Strength class, starts with axe or flails and medium armor training
	title = "Brigand"
	tutorial = "Cast from society, you use your powerful physical might and endurance to take from those who are weaker from you."
	outfit = /datum/outfit/bandit/brigand
	category_tags = list(CTAG_BANDIT)
	cmode_music = 'sound/music/cmode/antag/combat_bandit_brigand.ogg'

	attribute_sheet = /datum/attribute_holder/sheet/job/brigand

	traits = list(
		TRAIT_MEDIUMARMOR,
		TRAIT_CLOSECOMBAT,
		TRAIT_STEELHEARTED,
		TRAIT_DEADNOSE,
	)

/datum/job/advclass/bandit/brigand/on_roundstart(mob/living/carbon/human/spawned, client/player_client)
	. = ..()
	var/static/list/weapons = list(
		"Battleaxe & Cudgel" = list(/obj/item/weapon/axe/battle, /obj/item/weapon/mace/cudgel),
		"Flail & Shield" = list(/obj/item/weapon/shield/wood, /obj/item/weapon/flail),
		"Glaive" = list(/obj/item/weapon/polearm/halberd/bardiche/glaive),
		"Warhammer & Shield" = list(/obj/item/weapon/shield/heater, /obj/item/weapon/mace/warhammer),
		"Maul" = list(/obj/item/weapon/mace/goden/maul),
		"Claws" = list(/obj/item/weapon/handclaw),
		"Knuckledusters" = list(/obj/item/weapon/knuckles),
		"Woodcutters Axe" = list(/obj/item/weapon/polearm/halberd/bardiche/woodcutter)
	)
	var/weapon_choice = tgui_input_list(player_client,"CHOOSE YOUR WEAPON.", "ARMS TO SLAY THE OPPRESSORS", weapons)
	switch(weapon_choice)
		if("Battleaxe & Cudgel")
			spawned.put_in_hands(new /obj/item/weapon/axe/battle)
			spawned.put_in_hands(new /obj/item/weapon/mace/cudgel)
		if("Flail & Shield")
			spawned.put_in_hands(new /obj/item/weapon/shield/wood)
			spawned.put_in_hands(new /obj/item/weapon/flail)
		if("Glaive")
			spawned.put_in_hands(new /obj/item/weapon/polearm/halberd/bardiche/glaive)
		if("Warhammer & Shield")
			spawned.put_in_hands(new /obj/item/weapon/shield/heater)
			spawned.put_in_hands(new /obj/item/weapon/mace/warhammer)
		if("Maul")
			spawned.put_in_hands(new /obj/item/weapon/mace/goden/maul)
		if("Claws")
			spawned.put_in_hands(new /obj/item/weapon/handclaw)
			spawned.attributes?.add_sheet(/datum/attribute_holder/sheet/job/brigand/unarmed)
		if("Knuckledusters")
			spawned.put_in_hands(new /obj/item/weapon/handclaw)
			spawned.attributes?.add_sheet(/datum/attribute_holder/sheet/job/brigand/unarmed)
		if("Woodcutters Axe")
			spawned.put_in_hands(new /obj/item/weapon/polearm/halberd/bardiche/woodcutter)

/datum/outfit/bandit/brigand
	name = "Brigand (Bandit)"
	belt = /obj/item/storage/belt/leather
	pants = /obj/item/clothing/pants/platelegs/ancient/bandit
	shirt = /obj/item/clothing/armor/chainmail/ancient/bandit
	shoes = /obj/item/clothing/shoes/boots/darkboots
	backr = /obj/item/storage/backpack/satchel
	backpack_contents = list(/obj/item/needle = 1, /obj/item/natural/bundle/cloth/bandage/full = 1, /obj/item/clothing/face/shepherd/rag = 1, /obj/item/weapon/hammer/iron = 1)
	mask = /obj/item/clothing/face/facemask/steel/ancient/bandit
	neck = /obj/item/clothing/neck/chaincoif/ancient/bandit
	head = /obj/item/clothing/head/helmet/leather/volfhelm
	armor = /obj/item/clothing/armor/cuirass/ancient/bandit
	wrists = /obj/item/clothing/wrists/bracers/splintarms
	gloves = /obj/item/clothing/gloves/chain/ancient/bandit
	cloak = /obj/item/clothing/cloak/raincloak/furcloak/colored/black
