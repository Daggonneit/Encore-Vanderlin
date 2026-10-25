/datum/artificer_recipe
	appro_skill = /datum/attribute/skill/craft/engineering

// --------- GENERAL -----------

/datum/artificer_recipe/general
	i_type = "General"
	category = "General"

/datum/artificer_recipe/general/bronze_cast
	name = "Bronze Casting (None)"
	required_item = /obj/item/ingot/copper
	additional_items = list(/obj/item/ingot/tin = 1)
	created_item = /obj/item/ingot/bronze
	hammers_per_item = 3
	created_amount = 2
	craftdiff = 0

/datum/artificer_recipe/general/woodcog //This looks a bit silly but due to how these datums work is necessary for other things to inherit from it
	name = "Wooden Gear (Novice)"
	required_item = /obj/item/natural/wood/plank
	created_item = /obj/item/gear/wood/basic
	hammers_per_item = 5
	craftdiff = 1

/datum/artificer_recipe/general/woodcogupgrade2
	name = "Reliable Wooden Gear (+1 Essence of Lumber) (Apprentice)"
	required_item = /obj/item/natural/wood/plank
	created_item = /obj/item/gear/wood/reliable
	additional_items = list(/obj/item/grown/log/tree/essence = 1)
	hammers_per_item = 5
	craftdiff = 2

/datum/artificer_recipe/general/unstable
	name = "Unstable Wooden Gear (+1 Essence of Wilderness) (Journeyman)"
	required_item = /obj/item/natural/wood/plank
	created_item = /obj/item/gear/wood/unstable
	additional_items = list(/obj/item/natural/cured/essence = 1)
	hammers_per_item = 10
	craftdiff = 3

/datum/artificer_recipe/general/cog
	name = "3x Bronze Gears (Novice)"
	required_item = /obj/item/ingot/bronze
	created_item = /obj/item/gear/metal/bronze
	hammers_per_item = 10
	craftdiff = 1
	created_amount = 3

/datum/artificer_recipe/general/cog/iron
	name = "3x Iron Gear (Novice)"
	required_item = /obj/item/ingot/iron
	created_item = /obj/item/gear/metal/iron
	created_amount = 3

/datum/artificer_recipe/general/cog/steel
	name = "3x Steel Gears (Novice)"
	required_item = /obj/item/ingot/steel
	created_item = /obj/item/gear/metal/steel
	created_amount = 3

/datum/artificer_recipe/general/locks
	name = "5x Custom Locks (Novice)"
	required_item = /obj/item/ingot/bronze
	appro_skill = /datum/attribute/skill/craft/locksmithing
	created_item = /obj/item/customlock
	hammers_per_item = 5
	craftdiff = 1
	created_amount = 5

/datum/artificer_recipe/general/keys
	name = "5x Blank Custom Keys (Novice)"
	required_item = /obj/item/ingot/bronze
	appro_skill = /datum/attribute/skill/craft/locksmithing
	created_item = /obj/item/key/custom
	hammers_per_item = 5
	craftdiff = 1
	created_amount = 5

/datum/artificer_recipe/general/bronze_chisel
	name = "Bronze Chisel (Novice)"
	required_item = /obj/item/ingot/bronze
	created_item = /obj/item/weapon/chisel/bronze
	hammers_per_item = 5
	craftdiff = 1

/datum/artificer_recipe/general/headhook
	name = "Bronze Headhook (+2 Fibers) (Apprentice)"
	required_item = /obj/item/ingot/bronze
	created_item = /obj/item/storage/hip/headhook/bronze
	additional_items = list(/obj/item/natural/fibers = 2)
	hammers_per_item = 6
	craftdiff = 3

/datum/artificer_recipe/gold/headhook
	name = "Royal Headhook (+2 Silk) (Apprentice)"
	required_item = /obj/item/ingot/gold
	created_item = /obj/item/storage/hip/headhook/royal
	additional_items = list(/obj/item/natural/silk = 2)
	hammers_per_item = 6
	craftdiff = 3

// --------- TOOLS -----------

/datum/artificer_recipe/tools
	i_type = "Tools"
	category = "Tools"

/datum/artificer_recipe/tools/lamptern
	name = "Bronze Lamptern (Novice)"
	required_item = /obj/item/ingot/bronze
	created_item = /obj/item/flashlight/flare/torch/lantern/bronzelamptern
	hammers_per_item = 9
	craftdiff = 1

/datum/artificer_recipe/tools/lockpicks
	name = "5x Lockpicks (Novice)"
	required_item = /obj/item/ingot/iron
	created_item = /obj/item/lockpick
	appro_skill = /datum/attribute/skill/craft/locksmithing
	hammers_per_item = 5
	created_amount = 5
	craftdiff = 1

/datum/artificer_recipe/tools/lockpickring
	name = "Lockpick ring (Novice)"
	required_item = /obj/item/ingot/iron
	created_item = /obj/item/lockpickring
	appro_skill = /datum/attribute/skill/craft/locksmithing
	hammers_per_item = 5
	created_amount = 3
	craftdiff = 1

/datum/artificer_recipe/tools/drill
	name = "Clockwork Drill (+1 Bronze) (+1 Metal Gear) (+1 Wooden Plank) (Expert)"
	required_item = /obj/item/ingot/bronze
	additional_items = list(/obj/item/ingot/bronze = 1, /obj/item/gear/metal = 1, /obj/item/natural/wood/plank = 1)
	created_item = /obj/item/weapon/pick/drill
	hammers_per_item = 6
	craftdiff = 4

// --------- WEAPON -----------

/datum/artificer_recipe/weapons
	i_type = "Weapons"
	category = "Weapons"

/datum/artificer_recipe/weapons/crossbow
	name = "Crossbow (+1 Steel) (+2 Fibers) (Journeyman)"
	required_item = /obj/item/natural/wood/plank
	created_item = /obj/item/gun/ballistic/bow/cross
	additional_items = list(/obj/item/ingot/steel = 1, /obj/item/natural/fibers = 2)
	hammers_per_item = 7
	craftdiff = 3

/datum/artificer_recipe/weapons/harpoon_gun
	name = "Harpoon Gun (+1 Chain) (+2 Metal Gear) (+2 Bronze) (Expert)"
	required_item = /obj/item/ingot/steel
	created_item = /obj/item/harpoon_gun
	additional_items = list(/obj/item/rope/chain = 1, /obj/item/gear/metal = 2, /obj/item/ingot/bronze = 2)
	hammers_per_item = 7
	craftdiff = 4

/datum/artificer_recipe/weapons/airgun
	name = "Airgun (+2 Cured Leather) (+3 Bronze) (+4 Metal Gear) (Master)"
	required_item = /obj/item/ingot/steel
	created_item = /obj/item/gun/ballistic/airgun
	additional_items = list(/obj/item/natural/hide/cured = 2, /obj/item/ingot/bronze = 3, /obj/item/gear/metal = 4)
	hammers_per_item = 10
	craftdiff = 5

// --------- ARMOR -----------

//should be armour not armor fight me, but most of the codebase uses american english so its armor
/datum/artificer_recipe/armor
	i_type = "Armor"
	category = "Armor"

/datum/artificer_recipe/armor/steam_knight_helm
	name = "Steamknight Helmet (+3 Bronze) (+3 Metal Gear) (+1 Cloth) (Master)"
	required_item = /obj/item/ingot/steel
	created_item = /obj/item/clothing/head/helmet/heavy/steam
	additional_items = list(/obj/item/ingot/bronze = 3, /obj/item/gear/metal = 3, /obj/item/natural/cloth = 1)
	hammers_per_item = 4
	craftdiff = 5

/datum/artificer_recipe/armor/steam_knight_plate
	name = "Steamknight Plate (+5 Bronze) (+3 Metal Gear) (+2 Cloth) (Master)"
	required_item = /obj/item/ingot/steel
	created_item = /obj/item/clothing/armor/steam
	additional_items = list(/obj/item/ingot/bronze = 5, /obj/item/gear/metal = 3, /obj/item/natural/cloth = 2)
	hammers_per_item = 6
	craftdiff = 5

/datum/artificer_recipe/armor/steam_knight_gloves
	name = "Steamknight Gloves (+2 Bronze) (+2 Metal Gear) (+1 Cloth) (Master)"
	required_item = /obj/item/ingot/steel
	created_item = /obj/item/clothing/gloves/plate/steam
	additional_items = list(/obj/item/ingot/bronze = 3, /obj/item/gear/metal = 2, /obj/item/natural/cloth = 1)
	hammers_per_item = 4
	craftdiff = 5

/datum/artificer_recipe/armor/steam_knight_boots
	name = "Steamknight Boots (+2 Bronze) (+2 Metal Gear) (+1 Cloth) (Master)"
	required_item = /obj/item/ingot/steel
	created_item = /obj/item/clothing/shoes/boots/armor/steam
	additional_items = list(/obj/item/ingot/bronze = 3, /obj/item/gear/metal = 2, /obj/item/natural/cloth = 1)
	hammers_per_item = 4
	craftdiff = 5

/datum/artificer_recipe/armor/boiler
	name = "Steamknight Boiler (+1 Backpack) (+1 Bronze) (+3 Cogs) (Master)"
	required_item = /obj/item/ingot/bronze
	created_item = /obj/item/clothing/cloak/boiler
	additional_items = list(/obj/item/gear/metal/bronze = 3, /obj/item/ingot/bronze = 1, /obj/item/storage/backpack/backpack = 1)
	hammers_per_item = 5
	craftdiff = 5

// --------- Contraptions -----------

/datum/artificer_recipe/contraptions
	i_type = "Contraptions"
	category = "Contraptions"

/datum/artificer_recipe/contraptions/smelter
	name = "Portable Smelter (+1 Coal) (Journeyman)"
	required_item = /obj/item/ingot/bronze
	additional_items = list(/obj/item/ore/coal = 1)
	created_item = /obj/item/contraption/smelter
	hammers_per_item = 6
	craftdiff = 3

/datum/artificer_recipe/contraptions/advanced_ingot_mold
	name = "Advanced Ingot Mold (+1 Ingot Mold) (+1 Metal Gear) (+1 Bucket) (Journeyman)"
	required_item = /obj/item/ingot/bronze
	additional_items = list(/obj/item/mould/ingot = 1, /obj/item/gear/metal = 1, /obj/item/reagent_containers/glass/bucket = 1)
	created_item = /obj/item/mould/ingot/advanced
	hammers_per_item = 5
	craftdiff = 3

/datum/artificer_recipe/contraptions/shears
	name = "Amputation Shears (+2 Bronze) (Expert)"
	required_item = /obj/item/ingot/bronze
	additional_items = list(/obj/item/ingot/bronze = 2)
	created_item = /obj/item/contraption/shears
	hammers_per_item = 6
	craftdiff = 4

/datum/artificer_recipe/contraptions/linker
	name = "Engineering Wrench (+1 Bronze) (Apprentice)"
	required_item = /obj/item/ingot/bronze
	additional_items = list(/obj/item/ingot/bronze = 1)
	created_item = /obj/item/contraption/linker
	hammers_per_item = 7
	craftdiff = 2

/datum/artificer_recipe/contraptions/waterpurifier
	name = "Self-Purifying Waterskin (+1 Waterskin) (Journeyman)"
	required_item = /obj/item/ingot/bronze
	created_item = /obj/item/reagent_containers/glass/bottle/waterskin/purifier
	additional_items = list(/obj/item/reagent_containers/glass/bottle/waterskin)
	hammers_per_item = 7
	craftdiff = 3

/datum/artificer_recipe/contraptions/coolingbackpack
	name = "Cooling Backpack (+1 Backpack) (+2 Metal Gears) (Expert)"
	required_item = /obj/item/ingot/bronze
	created_item = /obj/item/storage/backpack/backpack/artibackpack
	additional_items = list(/obj/item/gear/metal = 2, /obj/item/storage/backpack/backpack)
	hammers_per_item = 4
	craftdiff = 4

/datum/artificer_recipe/contraptions/dwarven_music_box
	name = "Dwarven Music Box (+2 Bronze) (+2 Cogs) (+1 Amythortz) (Expert)"
	required_item = /obj/item/ingot/bronze
	created_item = /obj/item/dmusicbox
	additional_items = list(/obj/item/gear/metal = 2, /obj/item/ingot/bronze = 2, /obj/item/gem/amethyst = 1)
	hammers_per_item = 4
	craftdiff = 4

/datum/artificer_recipe/contraptions/deathshell
	name = "2x Steam Grenades (+2 Metal Gears) (Apprentice)"
	hammers_per_item = 2
	created_item = /obj/item/explosive/deathshell
	required_item = /obj/item/ingot/bronze
	additional_items = list(/obj/item/gear/metal = 2)
	craftdiff = 4
	created_amount = 2

// --------- Ammo -----------

/datum/artificer_recipe/ammo
	i_type = "Ammo"
	category = "Ammo"

/datum/artificer_recipe/ammo/cannon_ball
	name = "Lead Cannonball (+3 Iron) (Expert)"
	created_item = /obj/item/ammo_casing/caseless/cball
	required_item = /obj/item/ingot/iron
	additional_items = list(/obj/item/ingot/iron, /obj/item/ingot/iron, /obj/item/ingot/iron)
	hammers_per_item = 6
	craftdiff = 4

/datum/artificer_recipe/ammo/lead_bullet
	name = "Lead Bullets 4x (Apprentice)"
	hammers_per_item = 4
	created_item = /obj/item/ammo_casing/caseless/bullet
	required_item = /obj/item/ingot/tin
	craftdiff = 2
	created_amount = 4

/datum/artificer_recipe/ammo/lead_pellet
	name = "Pellet shots 4x (Apprentice)"
	hammers_per_item = 4
	created_item = /obj/item/ammo_casing/caseless/pelletshot
	required_item = /obj/item/ingot/tin
	craftdiff = 2
	created_amount = 4

/datum/artificer_recipe/ammo/bolts
	name = "Crossbow Bolts 5x (+1 Iron) (Apprentice)"
	required_item = /obj/item/natural/wood/plank
	additional_items = list(/obj/item/ingot/iron)
	created_item = /obj/item/ammo_casing/caseless/bolt
	hammers_per_item = 5
	craftdiff = 2
	created_amount = 5

/datum/artificer_recipe/ammo/arrows
	name = "Arrows 5x (+1 Iron) (Apprentice)"
	required_item = /obj/item/natural/wood/plank
	additional_items = list(/obj/item/ingot/iron)
	created_item = /obj/item/ammo_casing/caseless/arrow
	hammers_per_item = 5
	craftdiff = 2
	created_amount = 5

/datum/artificer_recipe/ammo/arrows/pyro
	name = "Fire Arrows 5x (+1 Iron) (+1 Blast Powder) (Journeyman)"
	required_item = /obj/item/natural/wood/plank
	additional_items = list(/obj/item/ingot/iron, /obj/item/reagent_containers/powder/blastpowder)
	created_item = /obj/item/ammo_casing/caseless/arrow/pyro
	hammers_per_item = 5
	craftdiff = 3
	created_amount = 5

/datum/artificer_recipe/ammo/bolts/pyro
	name = "Fire Bolts 5x (+1 Iron) (+1 Blast Powder) (Journeyman)"
	required_item = /obj/item/natural/wood/plank
	additional_items = list(/obj/item/ingot/iron, /obj/item/reagent_containers/powder/blastpowder)
	created_item = /obj/item/ammo_casing/caseless/bolt/pyro
	hammers_per_item = 5
	craftdiff = 3
	created_amount = 5

/datum/artificer_recipe/ammo/arrows/water
	name = "Water Arrows 5x (+1 Iron) (+1 Waterdust) (Journeyman)"
	required_item = /obj/item/natural/wood/plank
	additional_items = list(/obj/item/ingot/iron, /obj/item/alch/waterdust)
	created_item = /obj/item/ammo_casing/caseless/arrow/water
	hammers_per_item = 5
	craftdiff = 3
	created_amount = 5

/datum/artificer_recipe/ammo/bolts/water
	name = "Water Bolts 5x (+1 Iron) (+1 Waterdust) (Journeyman)"
	required_item = /obj/item/natural/wood/plank
	additional_items = list(/obj/item/ingot/iron, /obj/item/alch/waterdust)
	created_item = /obj/item/ammo_casing/caseless/bolt/water
	hammers_per_item = 5
	craftdiff = 3
	created_amount = 5

//If anyone wants to add vial arrows/bolts, please make sure the reagents in the vial end up on the arrow/bolt

// --------- WOODEN PROSTHETICS -----------

/datum/artificer_recipe/prosthetics
	i_type = "Prosthetics"
	category = "Prosthetics"

/datum/artificer_recipe/prosthetics/wood
	name = "Left Wooden Arm (+1 Plank) (Apprentice)"
	required_item = /obj/item/natural/wood/plank
	created_item = /obj/item/bodypart/l_arm/prosthetic/wood
	additional_items = list(/obj/item/natural/wood/plank = 1)
	hammers_per_item = 4
	craftdiff = 2

/datum/artificer_recipe/prosthetics/wood/arm_right
	name = "Right Wooden Arm (+1 Plank) (Apprentice)"
	created_item = /obj/item/bodypart/r_arm/prosthetic/wood

/datum/artificer_recipe/prosthetics/wood/leg_left
	name = "Left Wooden Leg (+1 Plank) (Apprentice)"
	created_item = /obj/item/bodypart/l_leg/prosthetic/wood

/datum/artificer_recipe/prosthetics/wood/leg_right
	name = "Right Wooden Leg (+1 Plank) (Apprentice)"
	created_item = /obj/item/bodypart/r_leg/prosthetic/wood

// --------- BRONZE PROSTHETICS -----------

/datum/artificer_recipe/prosthetics/bronze
	name = "Bronze Left Arm (+2 Cogs) (Expert)"
	required_item = /obj/item/ingot/bronze
	created_item = /obj/item/bodypart/l_arm/prosthetic/bronze
	hammers_per_item = 10
	craftdiff = 4
	additional_items = list(/obj/item/gear/metal = 2)

/datum/artificer_recipe/prosthetics/bronze/arm_right
	name = "Bronze Right Arm (+2 Cogs) (Expert)"
	created_item = /obj/item/bodypart/r_arm/prosthetic/bronze

// --------- GOLD PROSTHETICS -----------

/datum/artificer_recipe/prosthetics/gold // Guh this need a gold subtype oh well maybe some day there will be a golden cock! COG I MEAN GOD OMG
	name = "Gold Left Arm (+1 Cog) (Expert)"
	required_item = /obj/item/ingot/gold
	created_item = /obj/item/bodypart/l_arm/prosthetic/gold
	additional_items = list(/obj/item/gear/metal = 1)
	hammers_per_item = 20
	craftdiff = 4

/datum/artificer_recipe/prosthetics/gold/arm_right
	name = "Gold Right Arm (+1 Cog) (Expert)"
	created_item = /obj/item/bodypart/r_arm/prosthetic/gold

/datum/artificer_recipe/prosthetics/gold/leg_left
	name = "Gold Left Leg (+1 Cog) (Expert)"
	created_item = /obj/item/bodypart/l_leg/prosthetic/gold

/datum/artificer_recipe/prosthetics/gold/leg_right
	name = "Gold Right Leg (+1 Cog) (Expert)"
	created_item = /obj/item/bodypart/r_leg/prosthetic/gold

// --------- STEEL PROSTHETICS -----------

/datum/artificer_recipe/prosthetics/steel
	name = "Steel Left Arm (+1 Steel) (+1 Cog) (Expert)"
	created_item = /obj/item/bodypart/l_arm/prosthetic/steel
	required_item = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel = 1, /obj/item/gear/metal = 1)
	hammers_per_item = 15
	craftdiff = 4

/datum/artificer_recipe/prosthetics/steel/arm_right
	name = "Steel Right Arm (+1 Steel) (+1 Cog) (Expert)"
	created_item = /obj/item/bodypart/r_arm/prosthetic/steel

/datum/artificer_recipe/prosthetics/steel/leg_left
	name = "Steel Left Leg (+1 Steel) (+1 Cog) (Expert)"
	created_item = /obj/item/bodypart/l_leg/prosthetic/steel

/datum/artificer_recipe/prosthetics/steel/leg_right
	name = "Steel Right Leg (+1 Steel) (+1 Cog) (Expert)"
	created_item = /obj/item/bodypart/r_leg/prosthetic/steel

// --------- IRON PROSTHETICS -----------

/datum/artificer_recipe/prosthetics/iron //These are the inexpensive alternatives
	name = "Iron Left Arm (+1 Cog) (Apprentice)"
	created_item = /obj/item/bodypart/l_arm/prosthetic/iron
	required_item = /obj/item/ingot/iron
	additional_items = list(/obj/item/gear/metal = 1)
	hammers_per_item = 4
	craftdiff = 2

/datum/artificer_recipe/prosthetics/iron/arm_right
	name = "Iron Right Arm (+1 Cog) (Apprentice)"
	created_item = /obj/item/bodypart/r_arm/prosthetic/iron

/datum/artificer_recipe/prosthetics/iron/leg_left
	name = "Iron Left Leg (+1 Cog) (Apprentice)"
	created_item = /obj/item/bodypart/l_leg/prosthetic/iron

/datum/artificer_recipe/prosthetics/iron/leg_right
	name = "Iron Right Leg (+1 Cog) (Apprentice)"
	created_item = /obj/item/bodypart/r_leg/prosthetic/iron

// --------- Amulets -----------

/datum/artificer_recipe/psycross
	i_type = "Amulets"
	category = "Amulets"
	hammers_per_item = 5
	craftdiff = 2

/datum/artificer_recipe/psycross/heretical
	name = "Heretical Amulet (Apprentice)"
	required_item = /obj/item/ingot/silver
	created_item = /obj/item/clothing/neck/psycross/heretical

/datum/artificer_recipe/psycross/silver
	name = "Silver Angrosian Aspekter (Apprentice)"
	required_item = /obj/item/ingot/silver
	created_item = /obj/item/clothing/neck/psycross/silver

/datum/artificer_recipe/psycross/gold
	name = "Golden Angrosian Aspekter (Apprentice)"
	required_item = /obj/item/ingot/gold
	created_item = /obj/item/clothing/neck/psycross/gold

/datum/artificer_recipe/psycross/undivided
	name = "Undivided Amulet (Apprentice)"
	required_item = /obj/item/ingot/silver
	created_item = /obj/item/clothing/neck/psycross/silver/divine

/datum/artificer_recipe/psycross/deceivers
	name = "Deceivers Amulet (Apprentice)"
	required_item = /obj/item/ingot/gold
	created_item = /obj/item/clothing/neck/psycross/deceivers

/datum/artificer_recipe/psycross/archdevils
	name = "Hellish Amulet (Apprentice)"
	required_item = /obj/item/ingot/gold
	created_item = /obj/item/clothing/neck/psycross/archdevils

/datum/artificer_recipe/psycross/hertannea
	name = "Hertannean Amulet (Apprentice)"
	required_item = /obj/item/ingot/gold
	created_item = /obj/item/clothing/neck/psycross/hertannea

/datum/artificer_recipe/psycross/akan
	name = "Akan Amulet (Apprentice)"
	required_item = /obj/item/ingot/silver
	created_item = /obj/item/clothing/neck/psycross/silver/divine/akan

/datum/artificer_recipe/psycross/visires
	name = "Visires Amulet (Apprentice)"
	required_item = /obj/item/ingot/silver
	created_item = /obj/item/clothing/neck/psycross/silver/divine/visires

/datum/artificer_recipe/psycross/gani
	name = "Gani Amulet (Apprentice)"
	required_item = /obj/item/ingot/silver
	created_item = /obj/item/clothing/neck/psycross/silver/divine/gani

/datum/artificer_recipe/psycross/mjallidhorn
	name = "Mjallidhorn Amulet (Apprentice)"
	required_item = /obj/item/ingot/silver
	created_item = /obj/item/clothing/neck/psycross/silver/divine/mjallidhorn

/datum/artificer_recipe/psycross/valdala
	name = "Valdala Amulet (Apprentice)"
	required_item = /obj/item/ingot/silver
	created_item = /obj/item/clothing/neck/psycross/silver/divine/valdala

/datum/artificer_recipe/psycross/mordsol
	name = "Mordsol Amulet (Apprentice)"
	required_item = /obj/item/ingot/silver
	created_item = /obj/item/clothing/neck/psycross/silver/divine/mordsol

/datum/artificer_recipe/psycross/iliope
	name = "Iliope Amulet (Apprentice)"
	required_item = /obj/item/ingot/silver
	created_item = /obj/item/clothing/neck/psycross/silver/divine/iliope

/datum/artificer_recipe/psycross/pomette
	name = "Pomette Amulet (Apprentice)"
	required_item = /obj/item/ingot/silver
	created_item = /obj/item/clothing/neck/psycross/silver/divine/pomette

/datum/artificer_recipe/psycross/erdl
	name = "Erdl Amulet (Apprentice)"
	required_item = /obj/item/ingot/silver
	created_item = /obj/item/clothing/neck/psycross/silver/divine/erdl

/datum/artificer_recipe/psycross/golerkanh_silver
	name = "Goler Kanh Amulet (Apprentice)"
	required_item = /obj/item/ingot/silver
	created_item = /obj/item/clothing/neck/psycross/silver/divine/golerkanh

/datum/artificer_recipe/psycross/golerkanh_steel
	name = "Goler Kanh Steel Amulet (Apprentice)"
	required_item = /obj/item/ingot/steel
	created_item = /obj/item/clothing/neck/psycross/silver/divine/golerkanh/steel

// --------- Eyewear -----------

/datum/artificer_recipe/eyewear
	i_type = "Eyewear"
	category = "Eyewear"

/datum/artificer_recipe/eyewear/spectacles
	name = "Spectacles (+1 Glass Pane) (Novice)"
	required_item = /obj/item/ingot/copper
	additional_items = list(/obj/item/natural/glass = 1)
	created_item = /obj/item/clothing/face/spectacles
	hammers_per_item = 3
	created_amount = 1
	craftdiff = 1

/datum/artificer_recipe/eyewear/goldenspectacles
	name = "Golden Spectacles (+1 Glass Pane) (Novice)"
	required_item = /obj/item/ingot/gold
	additional_items = list(/obj/item/natural/glass = 1)
	created_item = /obj/item/clothing/face/spectacles/golden
	hammers_per_item = 3
	created_amount = 1
	craftdiff = 1

/datum/artificer_recipe/eyewear/goggles
	name = "Goggles (+1 Glass Pane) (Novice)"
	required_item = /obj/item/ingot/bronze
	additional_items = list(/obj/item/natural/glass = 1)
	created_item = /obj/item/clothing/face/goggles
	hammers_per_item = 3
	created_amount = 1
	craftdiff = 1

/datum/artificer_recipe/eyewear/monocle
	name = "Monocle (+1 Glass Pane) (Novice)"
	required_item = /obj/item/ingot/silver
	additional_items = list(/obj/item/natural/glass = 1)
	created_item = /obj/item/clothing/face/spectacles/monocle
	hammers_per_item = 3
	created_amount = 1
	craftdiff = 1

/datum/artificer_recipe/eyewear/sunglasses
	name = "Smokey Onyxa Spectacles (+1 Onyxa) (Novice)"
	required_item = /obj/item/ingot/silver
	additional_items = list(/obj/item/gem/onyxa = 1)
	created_item = /obj/item/clothing/face/spectacles/sglasses
	hammers_per_item = 3
	created_amount = 1
	craftdiff = 1

/datum/artificer_recipe/eyewear/inq
	name = "Inquisitorial Spectacles (+1 Rontz) (Apprentice)"
	required_item = /obj/item/ingot/silver
	additional_items = list(/obj/item/gem/red = 1)
	created_item = /obj/item/clothing/face/spectacles/inq
	hammers_per_item = 3
	created_amount = 1
	craftdiff = 3

/datum/artificer_recipe/eyewear/nighteyegoggles
	name = "Nighteye Goggles (+1 Dorpel, +1 Metal Gear) (Expert)"
	required_item = /obj/item/ingot/steel
	additional_items = list(/obj/item/gem/diamond = 1, /obj/item/gear/metal = 1)
	created_item = /obj/item/clothing/face/nighteyegoggles
	hammers_per_item = 3
	created_amount = 1
	craftdiff = 4


// --------- Misc -----------

/datum/artificer_recipe/misc
	i_type = "Misc"
	category = "Misc"

/datum/artificer_recipe/misc/jinglebells
	name = "Jingle Bells (Novice)"
	required_item = /obj/item/ingot/iron
	created_item = /obj/item/jingle_bells
	hammers_per_item = 5
	craftdiff = 1
