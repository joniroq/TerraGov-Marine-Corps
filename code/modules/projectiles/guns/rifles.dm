//-------------------------------------------------------

/obj/item/weapon/gun/rifle
	reload_sound = 'sound/weapons/guns/interact/rifle_reload.ogg'
	cocked_sound = 'sound/weapons/guns/interact/cocked.ogg'
	flags_equip_slot = ITEM_SLOT_BACK
	w_class = WEIGHT_CLASS_BULKY
	force = 15
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_LOAD_INTO_CHAMBER|GUN_AMMO_COUNTER
	load_method = MAGAZINE //codex
	aim_slowdown = 0.35
	wield_delay = 0.6 SECONDS
	gun_skill_category = GUN_SKILL_RIFLES

	burst_amount = 3
	burst_delay = 0.2 SECONDS
	accuracy_mult_unwielded = 0.6
	scatter_unwielded = 40
	recoil_unwielded = 4
	damage_falloff_mult = 0.5
	upper_akimbo_accuracy = 5
	lower_akimbo_accuracy = 3


/obj/item/weapon/gun/rifle/unique_action(mob/user)
	. = ..()
	return cock(user)


/obj/item/weapon/gun/rifle/get_ammo_type()
	if(!ammo)
		return list("unknown", "unknown")
	else
		return list(ammo.hud_state, ammo.hud_state_empty)

/obj/item/weapon/gun/rifle/get_ammo_count()
	if(!current_mag)
		return in_chamber ? 1 : 0
	else
		return in_chamber ? (current_mag.current_rounds + 1) : current_mag.current_rounds

//-------------------------------------------------------
//T-18 Carbine

/obj/item/weapon/gun/rifle/standard_carbine
	name = "\improper T-18 carbine"
	desc = "The T-18 carbine is one of the standard rifles used by the TerraGov Marine Corps. It's commonly used by people who prefer greater mobility in combat, like scouts and other light infantry. Uses 10x24mm caseless ammunition."
	icon_state = "t18"
	item_state = "t18"
	fire_sound = "gun_t12"
	dry_fire_sound = 'sound/weapons/guns/fire/m41a_empty.ogg'
	unload_sound = 'sound/weapons/guns/interact/t18_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/t18_reload.ogg'
	caliber = CALIBER_10X24_CASELESS //codex
	max_shells = 36 //codex
	force = 20
	current_mag = /obj/item/ammo_magazine/rifle/standard_carbine
	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/angledgrip,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/gyro,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/bipod,
		/obj/item/attachable/stock/t18stock,
		/obj/item/attachable/burstfire_assembly,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/suppressor,
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonetknife,
		/obj/item/attachable/compensator,
		/obj/item/attachable/attached_gun/grenade,
		/obj/item/attachable/attached_gun/flamer,
		/obj/item/attachable/scope,
		/obj/item/attachable/scope/marine,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/attached_gun/shotgun,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER|GUN_LOAD_INTO_CHAMBER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_BURSTFIRE, GUN_FIREMODE_AUTOMATIC, GUN_FIREMODE_AUTOBURST)
	starting_attachment_types = list(/obj/item/attachable/stock/t18stock)
	attachable_offset = list("muzzle_x" = 30, "muzzle_y" = 16,"rail_x" = 10, "rail_y" = 19, "under_x" = 18, "under_y" = 13, "stock_x" = 0, "stock_y" = 13)
	actions_types = list(/datum/action/item_action/aim_mode)
	aim_fire_delay = 0.1 SECONDS
	aim_speed_modifier = 2

	fire_delay = 0.2 SECONDS
	burst_delay = 0.1 SECONDS
	accuracy_mult = 1.10
	scatter = -5
	burst_amount = 4
	aim_slowdown = 0.30
	damage_falloff_mult = 0.9

/obj/item/weapon/gun/rifle/standard_carbine/pointman
	starting_attachment_types = list(/obj/item/attachable/stock/t18stock, /obj/item/attachable/lasersight, /obj/item/attachable/flashlight, /obj/item/attachable/t18barrel)

/obj/item/weapon/gun/rifle/standard_carbine/engineer
	starting_attachment_types = list(/obj/item/attachable/stock/t18stock, /obj/item/attachable/magnetic_harness, /obj/item/attachable/t18barrel, /obj/item/attachable/angledgrip)

//-------------------------------------------------------
//T-12 Assault Rifle

/obj/item/weapon/gun/rifle/standard_assaultrifle
	name = "\improper T-12 assault rifle"
	desc = "The T-12 assault rifle used to be the TerraGov Marine Corps standard issue rifle before the T-18 carbine replaced it. It is, however, still used widely despite that. The gun itself is very good at being used in most situations however it suffers in engagements at close quarters and is relatively hard to shoulder than some others. It uses 10x24mm caseless ammunition."
	icon_state = "t12"
	item_state = "t12"
	fire_sound = "gun_t12"
	dry_fire_sound = 'sound/weapons/guns/fire/m41a_empty.ogg'
	unload_sound = 'sound/weapons/guns/interact/t18_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/t18_reload.ogg'
	caliber = CALIBER_10X24_CASELESS //codex
	max_shells = 50 //codex
	force = 20
	current_mag = /obj/item/ammo_magazine/rifle/standard_assaultrifle
	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/gyro,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/bipod,
		/obj/item/attachable/stock/t12stock,
		/obj/item/attachable/burstfire_assembly,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/suppressor,
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonetknife,
		/obj/item/attachable/compensator,
		/obj/item/attachable/scope,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/scope/marine,
		/obj/item/attachable/attached_gun/grenade,
		/obj/item/attachable/attached_gun/flamer,
		/obj/item/attachable/angledgrip,
		/obj/item/attachable/attached_gun/shotgun,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER|GUN_LOAD_INTO_CHAMBER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_BURSTFIRE, GUN_FIREMODE_AUTOMATIC, GUN_FIREMODE_AUTOBURST)
	starting_attachment_types = list(/obj/item/attachable/stock/t12stock)
	attachable_offset = list("muzzle_x" = 30, "muzzle_y" = 17,"rail_x" = 4, "rail_y" = 23, "under_x" = 20, "under_y" = 11, "stock_x" = 0, "stock_y" = 13)
	actions_types = list(/datum/action/item_action/aim_mode)
	aim_fire_delay = 0.1 SECONDS
	aim_speed_modifier = 2

	fire_delay = 0.2 SECONDS
	burst_delay = 0.15 SECONDS
	accuracy_mult = 1.15
	scatter = -10
	wield_delay = 0.7 SECONDS
	burst_amount = 3
	aim_slowdown = 0.4
	damage_falloff_mult = 0.5

/obj/item/weapon/gun/rifle/standard_assaultrifle/rifleman
	starting_attachment_types = list(/obj/item/attachable/stock/t18stock, /obj/item/attachable/reddot, /obj/item/attachable/t12barrel, /obj/item/attachable/attached_gun/grenade)

/obj/item/weapon/gun/rifle/standard_assaultrifle/engineer
	starting_attachment_types = list(/obj/item/attachable/stock/t18stock, /obj/item/attachable/magnetic_harness, /obj/item/attachable/t12barrel, /obj/item/attachable/angledgrip)

//-------------------------------------------------------
//T-37 DMR

/obj/item/weapon/gun/rifle/standard_dmr
	name = "\improper T-37 designated marksman rifle"
	desc = "The T-37 DMR is the TerraGov Marine Corps designated marksman rifle. It is rather well-known for it's very consistent target placement at longer than usual range, it however lacks a burst fire mode or an automatic mode. It is mostly used by people who prefer to do more careful shooting than most. Uses 10x27mm caseless caliber."
	icon = 'icons/Marine/gun64.dmi'
	icon_state = "t37"
	item_state = "t37"
	muzzleflash_iconstate = "muzzle_flash_medium"
	fire_sound = 'sound/weapons/guns/fire/DMR.ogg'
	fire_rattle = 'sound/weapons/guns/fire/DMR_low.ogg'
	dry_fire_sound = 'sound/weapons/guns/fire/m41a_empty.ogg'
	unload_sound = 'sound/weapons/guns/interact/m41a_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/m41a_reload.ogg'
	caliber = CALIBER_10x27_CASELESS //codex
	aim_slowdown = 0.75
	wield_delay = 0.8 SECONDS
	force = 20
	max_shells = 10 //codex
	current_mag = /obj/item/ammo_magazine/rifle/standard_dmr
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonetknife,
		/obj/item/attachable/compensator,
		/obj/item/attachable/reddot,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/angledgrip,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/bipod,
		/obj/item/attachable/gyro,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/attached_gun/grenade,
		/obj/item/attachable/attached_gun/flamer,
		/obj/item/attachable/attached_gun/shotgun,
		/obj/item/attachable/scope,
		/obj/item/attachable/scope/marine,
		/obj/item/attachable/scope/mini/dmr,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_AMMO_COUNTER|GUN_LOAD_INTO_CHAMBER|GUN_CAN_POINTBLANK
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_AUTOMATIC)
	starting_attachment_types = list(/obj/item/attachable/scope/mini/dmr)
	attachable_offset = list("muzzle_x" = 48, "muzzle_y" = 21,"rail_x" = 21, "rail_y" = 24, "under_x" = 31, "under_y" = 15, "stock_x" = 14, "stock_y" = 10)
	actions_types = list(/datum/action/item_action/aim_mode)
	aim_fire_delay = 0.2 SECONDS
	aim_speed_modifier = 2

	fire_delay = 0.8 SECONDS
	accuracy_mult = 1.25
	scatter = -15
	burst_amount = 1

/obj/item/weapon/gun/rifle/standard_dmr/marksman
	starting_attachment_types = list(/obj/item/attachable/scope, /obj/item/attachable/angledgrip, /obj/item/attachable/extended_barrel)



//-------------------------------------------------------
//T-64 BR

/obj/item/weapon/gun/rifle/standard_br
	name = "\improper T-64 battle rifle"
	desc = "The T-64 is the TerraGov Marine Corps main battle rifle. It is known for its consistent ability to perform well at most ranges, and close range stopping power. It is mostly used by people who prefer a bigger round than the average. Lacks burst fire. Uses 10x27mm caseless caliber."
	icon_state = "t64"
	item_state = "t64"
	muzzleflash_iconstate = "muzzle_flash_medium"
	fire_sound = 'sound/weapons/guns/fire/t64.ogg'
	fire_rattle = 'sound/weapons/guns/fire/t64_low.ogg'
	dry_fire_sound = 'sound/weapons/guns/fire/m41a_empty.ogg'
	unload_sound = 'sound/weapons/guns/interact/m41a_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/m41a_reload.ogg'
	caliber = CALIBER_10x27_CASELESS //codex
	aim_slowdown = 0.55
	wield_delay = 0.7 SECONDS
	force = 20
	max_shells = 10 //codex
	current_mag = /obj/item/ammo_magazine/rifle/standard_br
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonetknife,
		/obj/item/attachable/compensator,
		/obj/item/attachable/reddot,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/bipod,
		/obj/item/attachable/gyro,
		/obj/item/attachable/stock/br,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/attached_gun/grenade,
		/obj/item/attachable/attached_gun/flamer,
		/obj/item/attachable/attached_gun/shotgun,
		/obj/item/attachable/scope,
		/obj/item/attachable/scope/marine,
		/obj/item/attachable/scope/mini,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_AMMO_COUNTER|GUN_LOAD_INTO_CHAMBER|GUN_CAN_POINTBLANK
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_AUTOMATIC)
	starting_attachment_types = list(/obj/item/attachable/stock/br,/obj/item/attachable/scope/mini)
	attachable_offset = list("muzzle_x" = 33, "muzzle_y" = 18,"rail_x" = 17, "rail_y" = 18, "under_x" = 25, "under_y" = 12, "stock_x" = 14, "stock_y" = 10)
	actions_types = list(/datum/action/item_action/aim_mode)
	aim_fire_delay = 0.2 SECONDS
	aim_speed_modifier = 3

	fire_delay = 0.35 SECONDS
	damage_mult = 0.5 //uses the marksman bullet, like the DMR.
	accuracy_mult = 1.25
	scatter = -10
	burst_amount = 1

//-------------------------------------------------------
//M412 Pulse Rifle

/obj/item/weapon/gun/rifle/m412
	name = "\improper M412 pulse rifle"
	desc = "The M412 rifle is a Pulse Industries rifle, billed as a pulse rifle due to its use of electronic firing for faster velocity. A rather common sight in most systems. Uses 10x24mm caseless ammunition."
	icon = 'icons/Marine/gun64.dmi'
	icon_state = "m412"
	item_state = "m412"
	muzzleflash_iconstate = "muzzle_flash_medium"
	fire_sound = "sound/weapons/guns/fire/m412.ogg"
	dry_fire_sound = 'sound/weapons/guns/fire/m41a_empty.ogg'
	unload_sound = 'sound/weapons/guns/interact/m41a_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/m41a_reload.ogg'
	caliber = CALIBER_10X24_CASELESS //codex
	max_shells = 40 //codex
	current_mag = /obj/item/ammo_magazine/rifle
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonetknife,
		/obj/item/attachable/compensator,
		/obj/item/attachable/reddot,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/angledgrip,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/gyro,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/bipod,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/burstfire_assembly,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/attached_gun/grenade,
		/obj/item/attachable/attached_gun/flamer,
		/obj/item/attachable/attached_gun/shotgun,
		/obj/item/attachable/scope,
		/obj/item/attachable/scope/mini,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER|GUN_LOAD_INTO_CHAMBER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_BURSTFIRE, GUN_FIREMODE_AUTOMATIC, GUN_FIREMODE_AUTOBURST)
	starting_attachment_types = list(/obj/item/attachable/attached_gun/grenade)
	attachable_offset = list("muzzle_x" = 41, "muzzle_y" = 19,"rail_x" = 17, "rail_y" = 20, "under_x" = 27, "under_y" = 14, "stock_x" = 9, "stock_y" = 15)

	fire_delay = 0.2 SECONDS
	burst_delay = 0.15 SECONDS
	accuracy_mult = 1.15
	scatter = -10
	wield_delay = 0.7 SECONDS
	burst_amount = 3
	aim_slowdown = 0.4
	damage_mult = 1.05 //Has smaller magazines



//-------------------------------------------------------
//M412 PMC VARIANT

/obj/item/weapon/gun/rifle/m412/elite
	name = "\improper M412E battle rifle"
	desc = "An \"Elite\" modification of the M412 pulse rifle series, given to special operation units. It has been given a stock and a longer barrel with an integrated barrel charger, with a red skull stenciled on the body for some reason."
	icon_state = "m412e"
	item_state = "m412e"
	current_mag = /obj/item/ammo_magazine/rifle/ap
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonetknife,
		/obj/item/attachable/reddot,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/angledgrip,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/gyro,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/bipod,
		/obj/item/attachable/burstfire_assembly,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/attached_gun/grenade,
		/obj/item/attachable/attached_gun/flamer,
		/obj/item/attachable/attached_gun/shotgun,
		/obj/item/attachable/scope,
		/obj/item/attachable/scope/mini,
	)

	attachable_offset = list("muzzle_x" = 33, "muzzle_y" = 19,"rail_x" = 8, "rail_y" = 21, "under_x" = 22, "under_y" = 15, "stock_x" = 9, "stock_y" = 15)
	starting_attachment_types = list(/obj/item/attachable/attached_gun/grenade, /obj/item/attachable/stock/irremoveable/rifle, /obj/item/attachable/magnetic_harness)


	burst_delay = 0.2 SECONDS
	accuracy_mult = 1.15
	damage_mult = 1.5
	scatter = 0


//-------------------------------------------------------
//HK-11

/obj/item/weapon/gun/rifle/m41a
	name = "\improper HK-11 pulse rifle"
	desc = "A strange failed electronically fired rifle, a rather unknown weapon of its time. It caused a surge in the use of electronic firing in the modern era though. Uses 10x24mm caseless ammunition. Has a irremoveable grenade launcher."
	icon = 'icons/Marine/gun64.dmi'
	icon_state = "m41a"
	item_state = "m41a"
	fire_sound = "sound/weapons/guns/fire/m412.ogg"
	dry_fire_sound = 'sound/weapons/guns/fire/m41a_empty.ogg'
	unload_sound = 'sound/weapons/guns/interact/m41a_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/m41a_reload.ogg'
	aim_slowdown = 0.5
	wield_delay = 1.35 SECONDS
	max_shells = 95 //codex
	current_mag = /obj/item/ammo_magazine/rifle/m41a
	attachable_allowed = list(
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonetknife,
		/obj/item/attachable/reddot,
		/obj/item/attachable/suppressor,
		/obj/item/attachable/compensator,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/scope,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER|GUN_LOAD_INTO_CHAMBER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_BURSTFIRE, GUN_FIREMODE_AUTOMATIC, GUN_FIREMODE_AUTOBURST)
	starting_attachment_types = list(/obj/item/attachable/stock/irremoveable/m41a, /obj/item/attachable/attached_gun/grenade/unremovable/invisible)
	attachable_offset = list("muzzle_x" = 41, "muzzle_y" = 19,"rail_x" = 12, "rail_y" = 24, "under_x" = 24, "under_y" = 13, "stock_x" = 21, "stock_y" = 16)

	burst_amount = 4
	burst_delay = 0.15 SECONDS
	accuracy_mult = 1.10
	scatter = -10
	fire_delay = 0.2 SECONDS



//-------------------------------------------------------

/obj/item/weapon/gun/rifle/ak47
	name = "\improper AK-47 assault rifle"
	desc = "A crude, cheaply produced assault rifle capable of automatic fire. A replicant of the 1947 Kalashnikov rifle made with wood coloured plating, chambering the orginal 7.62x39mm round. Despite lacking attachment points, remains a popular product on the black market with its cheap cost and armor punching rounds."
	icon_state = "ak47"
	item_state = "ak47"
	caliber = CALIBER_762X39 //codex
	muzzleflash_iconstate = "muzzle_flash_medium"
	max_shells = 40 //codex
	fire_sound = 'sound/weapons/guns/fire/ak47.ogg'
	unload_sound = 'sound/weapons/guns/interact/ak47_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/ak47_reload.ogg'
	cocked_sound = 'sound/weapons/guns/interact/ak47_cocked.ogg'
	current_mag = /obj/item/ammo_magazine/rifle/ak47
	aim_slowdown = 0.7
	type_of_casings = "cartridge"
	attachable_allowed = list(
		/obj/item/attachable/bayonet,
		/obj/item/attachable/flashlight,
	)

	flags_gun_features = GUN_CAN_POINTBLANK|GUN_LOAD_INTO_CHAMBER|GUN_AMMO_COUNTER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_AUTOMATIC)
	attachable_offset = list("muzzle_x" = 32, "muzzle_y" = 17,"rail_x" = 15, "rail_y" = 17, "under_x" = 24, "under_y" = 13, "stock_x" = 0, "stock_y" = 12)
	starting_attachment_types = list(/obj/item/attachable/stock/ak47)

	accuracy_mult = 1
	burst_amount = 1
	fire_delay = 0.25 SECONDS
	scatter = 5
	wield_delay = 0.7 SECONDS

//-------------------------------------------------------
//M16 RIFLE

/obj/item/weapon/gun/rifle/m16
	name = "\improper FN M16A4 assault rifle"
	desc = "A light, versatile assault rifle with a 30 round magazine, chambered to fire the 5.56x45mm NATO cartridge. The 4th generation in the M16 platform, this FN variant has added automatic fire selection and retains relevance among mercenaries and militias thanks to its high customizability."
	icon = 'icons/Marine/gun64.dmi'
	icon_state = "m16a4"
	item_state = "m16a4"
	muzzleflash_iconstate = "muzzle_flash_medium"
	caliber = CALIBER_556X45 //codex
	max_shells = 30 //codex
	fire_sound = 'sound/weapons/guns/fire/m16.ogg'
	unload_sound = 'sound/weapons/guns/interact/m16_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/m16_reload.ogg'
	cocked_sound = 'sound/weapons/guns/interact/m16_cocked.ogg'
	current_mag = /obj/item/ammo_magazine/rifle/m16
	aim_slowdown = 0.4
	type_of_casings = "cartridge"
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonetknife,
		/obj/item/attachable/reddot,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/angledgrip,
		/obj/item/attachable/gyro,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/bipod,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/compensator,
		/obj/item/attachable/burstfire_assembly,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/attached_gun/grenade,
		/obj/item/attachable/attached_gun/flamer,
		/obj/item/attachable/attached_gun/shotgun,
		/obj/item/attachable/m16sight,
		/obj/item/attachable/scope,
		/obj/item/attachable/scope/mini,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_LOAD_INTO_CHAMBER|GUN_AMMO_COUNTER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_BURSTFIRE, GUN_FIREMODE_AUTOMATIC, GUN_FIREMODE_AUTOBURST)
	attachable_offset = list("muzzle_x" = 47, "muzzle_y" = 19,"rail_x" = 18, "rail_y" = 24, "under_x" = 37, "under_y" = 14, "stock_x" = 19, "stock_y" = 13)
	actions_types = list(/datum/action/item_action/aim_mode)
	aim_fire_delay = 0.2 SECONDS
	aim_speed_modifier = 3

	fire_delay = 0.2 SECONDS
	burst_delay = 0.15 SECONDS
	accuracy_mult = 1.3
	wield_delay = 0.5 SECONDS
	damage_mult = 1.2

/obj/item/weapon/gun/rifle/m16/freelancerleader
	starting_attachment_types = list(/obj/item/attachable/verticalgrip, /obj/item/attachable/scope/mini, /obj/item/attachable/extended_barrel)

/obj/item/weapon/gun/rifle/m16/freelancer
	starting_attachment_types = list(/obj/item/attachable/verticalgrip, /obj/item/attachable/extended_barrel)

/obj/item/weapon/gun/rifle/m16/somleader
	starting_attachment_types = list(/obj/item/attachable/reddot)

/obj/item/weapon/gun/rifle/m16/somvet
	starting_attachment_types = list(/obj/item/attachable/magnetic_harness)

//-------------------------------------------------------
//FAMAS rifle, based on the F1

/obj/item/weapon/gun/rifle/famas
	name = "\improper FAMAS assault rifle"
	desc = "A light, versatile fast firing assault rifle with a 24 round magazine and short range scope, chambered to fire the 5.56x45mm NATO cartridge in 24 round magazines."
	icon = 'icons/Marine/gun64.dmi'
	icon_state = "famas"
	item_state = "famas"
	muzzleflash_iconstate = "muzzle_flash_medium"
	caliber = CALIBER_556X45 //codex
	max_shells = 24 //codex
	fire_sound = 'sound/weapons/guns/fire/famas.ogg'
	unload_sound = 'sound/weapons/guns/interact/m16_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/m16_reload.ogg'
	cocked_sound = 'sound/weapons/guns/interact/m16_cocked.ogg'
	current_mag = /obj/item/ammo_magazine/rifle/famas
	aim_slowdown = 0.4
	type_of_casings = "cartridge"
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonetknife,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/angledgrip,
		/obj/item/attachable/gyro,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/bipod,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/compensator,
		/obj/item/attachable/burstfire_assembly,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/attached_gun/grenade,
		/obj/item/attachable/attached_gun/flamer,
		/obj/item/attachable/attached_gun/shotgun,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_LOAD_INTO_CHAMBER|GUN_AMMO_COUNTER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_BURSTFIRE, GUN_FIREMODE_AUTOMATIC, GUN_FIREMODE_AUTOBURST)
	attachable_offset = list("muzzle_x" = 38, "muzzle_y" = 17,"rail_x" = 22, "rail_y" = 24, "under_x" = 28, "under_y" = 12, "stock_x" = 19, "stock_y" = 13)

	fire_delay = 0.15 SECONDS
	burst_delay = 0.15 SECONDS
	accuracy_mult = 1.25
	wield_delay = 0.5 SECONDS
	damage_mult = 1.2
	scatter = 5

/obj/item/weapon/gun/rifle/famas/freelancermedic
	starting_attachment_types = list(/obj/item/attachable/lasersight, /obj/item/attachable/suppressor)


//-------------------------------------------------------
//T-42 Light Machine Gun

/obj/item/weapon/gun/rifle/standard_lmg
	name = "\improper T-42 light machine gun"
	desc = "The T-42 is the TGMC's current standard non-IFF-capable LMG. It's known for its ability to lay down heavy fire support very well. It is generally used when someone wants to hold a position or provide fire support. It uses 10x24mm ammunition."
	icon_state = "t42"
	item_state = "t42"
	caliber = CALIBER_10X24_CASELESS //codex
	max_shells = 120 //codex
	force = 30
	aim_slowdown = 0.8
	wield_delay = 1 SECONDS
	fire_sound =  'sound/weapons/guns/fire/t40.ogg'
	dry_fire_sound = 'sound/weapons/guns/fire/m41a_empty.ogg'
	unload_sound = 'sound/weapons/guns/interact/T42_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/T42_reload.ogg'
	current_mag = /obj/item/ammo_magazine/standard_lmg
	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/bipod,
		/obj/item/attachable/angledgrip,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/suppressor,
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonetknife,
		/obj/item/attachable/scope,
		/obj/item/attachable/scope/marine,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/compensator,
		/obj/item/attachable/stock/t42stock,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/attached_gun/grenade,
		/obj/item/attachable/attached_gun/flamer,
		/obj/item/attachable/attached_gun/shotgun,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_AMMO_COUNTER|GUN_LOAD_INTO_CHAMBER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_AUTOMATIC)
	starting_attachment_types = list(/obj/item/attachable/stock/t42stock)
	gun_skill_category = GUN_SKILL_HEAVY_WEAPONS
	attachable_offset = list("muzzle_x" = 31, "muzzle_y" = 17,"rail_x" = 4, "rail_y" = 20, "under_x" = 16, "under_y" = 13, "stock_x" = 0, "stock_y" = 13)
	actions_types = list(/datum/action/item_action/aim_mode)
	aim_fire_delay = 0.18 SECONDS
	aim_speed_modifier = 5

	fire_delay = 0.2 SECONDS
	burst_amount = 1
	accuracy_mult_unwielded = 0.5
	accuracy_mult = 1
	scatter = 10
	scatter_unwielded = 80

//-------------------------------------------------------
//T-60 General Purpose Machine Gun

/obj/item/weapon/gun/rifle/standard_gpmg
	name = "\improper T-60 general purpose machine gun"
	desc = "The T-60 general purpose machinegun is the TGMC's current standard GPMG. Though usually seen mounted on vehicles, it is sometimes used by infantry to hold chokepoints or suppress enemies, or in rare cases for marching fire. It uses 10x26mm boxes."
	icon = 'icons/Marine/gun64.dmi'
	icon_state = "t60"
	item_state = "t60"
	caliber = CALIBER_10x26_CASELESS //codex
	max_shells = 250 //codex
	force = 35
	aim_slowdown = 1.2
	wield_delay = 1.5 SECONDS
	fire_sound =  'sound/weapons/guns/fire/GPMG.ogg'
	fire_rattle =  'sound/weapons/guns/fire/GPMG_low.ogg'
	dry_fire_sound = 'sound/weapons/guns/fire/m41a_empty.ogg'
	unload_sound = 'sound/weapons/guns/interact/T42_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/T42_reload.ogg'
	current_mag = /obj/item/ammo_magazine/standard_gpmg
	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/bipod,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/suppressor,
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonetknife,
		/obj/item/attachable/scope,
		/obj/item/attachable/scope/marine,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/stock/t60stock,
		/obj/item/attachable/magnetic_harness,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_AMMO_COUNTER|GUN_LOAD_INTO_CHAMBER|GUN_WIELDED_FIRING_ONLY
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_AUTOMATIC)
	starting_attachment_types = list(/obj/item/attachable/stock/t60stock)
	gun_skill_category = GUN_SKILL_HEAVY_WEAPONS
	attachable_offset = list("muzzle_x" = 41, "muzzle_y" = 21,"rail_x" = 8, "rail_y" = 23, "under_x" = 25, "under_y" = 14, "stock_x" = 11, "stock_y" = 14)
	actions_types = list(/datum/action/item_action/aim_mode)
	aim_fire_delay = 0.2 SECONDS
	aim_speed_modifier = 6

	fire_delay = 0.15 SECONDS
	damage_falloff_mult = 0.5
	burst_amount = 1
	accuracy_mult_unwielded = 0.4
	accuracy_mult = 1
	scatter = 25
	scatter_unwielded = 80

/obj/item/weapon/gun/rifle/standard_lmg/autorifleman
	starting_attachment_types = list(/obj/item/attachable/verticalgrip, /obj/item/attachable/t42barrel, /obj/item/attachable/reddot)

//-------------------------------------------------------
//M41AE2 Heavy Pulse Rifle

/obj/item/weapon/gun/rifle/m412l1_hpr
	name = "\improper M412L1 heavy pulse rifle"
	desc = "A large weapon capable of laying down supressing fire, based on the M412 pulse rifle platform. Uses 10x24mm caseless ammunition."
	icon = 'icons/Marine/gun64.dmi'
	icon_state = "m412l1"
	item_state = "m412l1"
	caliber = CALIBER_10X24_CASELESS //codex
	max_shells = 200 //codex
	aim_slowdown = 0.8
	wield_delay = 2 SECONDS
	fire_sound =  'sound/weapons/guns/fire/hmg.ogg'
	dry_fire_sound = 'sound/weapons/guns/fire/m41a_empty.ogg'
	unload_sound = 'sound/weapons/guns/interact/m41a_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/m41a_reload.ogg'
	current_mag = /obj/item/ammo_magazine/m412l1_hpr
	attachable_allowed = list(
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/reddot,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/angledgrip,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/bipod,
		/obj/item/attachable/compensator,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/scope,
		/obj/item/attachable/scope/marine,
		/obj/item/attachable/scope/mini,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER|GUN_WIELDED_FIRING_ONLY|GUN_LOAD_INTO_CHAMBER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_BURSTFIRE, GUN_FIREMODE_AUTOMATIC, GUN_FIREMODE_AUTOBURST)
	gun_skill_category = GUN_SKILL_HEAVY_WEAPONS
	attachable_offset = list("muzzle_x" = 33, "muzzle_y" = 19,"rail_x" = 8, "rail_y" = 21, "under_x" = 22, "under_y" = 15, "stock_x" = 9, "stock_y" = 15)
	starting_attachment_types = list(/obj/item/attachable/stock/irremoveable/rifle)
	actions_types = list(/datum/action/item_action/aim_mode)
	aim_fire_delay = 0.15 SECONDS
	aim_speed_modifier = 2

	fire_delay = 0.3 SECONDS
	burst_amount = 5
	burst_delay = 0.1 SECONDS
	accuracy_mult_unwielded = 0.5
	accuracy_mult = 1.05
	scatter = 15
	scatter_unwielded = 80
	recoil_unwielded = 5


//-------------------------------------------------------
//USL TYPE 71 RIFLE

/obj/item/weapon/gun/rifle/type71
	name = "\improper Type 71 pulse rifle"
	desc = "The primary rifle of the USL pirates, the Type 71 is a reliable rifle chambered in 7.62x39mm, firing in three round bursts to conserve ammunition. A newer model for surpression roles to comply with overmatch doctrines is in progress and only issued to a limited number of privates in the USL."
	icon = 'icons/Marine/gun64.dmi'
	icon_state = "type71"
	item_state = "type71"
	muzzleflash_iconstate = "muzzle_flash_medium"
	caliber = CALIBER_762X39 //codex
	max_shells = 42 //codex
	fire_sound = 'sound/weapons/guns/fire/type71.ogg'
	unload_sound = 'sound/weapons/guns/interact/type71_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/type71_reload.ogg'
	cocked_sound = 'sound/weapons/guns/interact/type71_cocked.ogg'
	current_mag = /obj/item/ammo_magazine/rifle/type71
	aim_slowdown = 0.6
	wield_delay = 0.7 SECONDS
	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/gyro,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/bipod,
		/obj/item/attachable/burstfire_assembly,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/suppressor,
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonetknife,
		/obj/item/attachable/compensator,
		/obj/item/attachable/scope,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/scope/marine,
		/obj/item/attachable/attached_gun/grenade,
		/obj/item/attachable/attached_gun/flamer,
		/obj/item/attachable/angledgrip,
		/obj/item/attachable/attached_gun/shotgun,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_LOAD_INTO_CHAMBER|GUN_AMMO_COUNTER
	attachable_offset = list("muzzle_x" = 41, "muzzle_y" = 19,"rail_x" = 18, "rail_y" = 24, "under_x" = 34, "under_y" = 16, "stock_x" = 19, "stock_y" = 13)
	gun_firemode_list = list(GUN_FIREMODE_BURSTFIRE, GUN_FIREMODE_AUTOBURST)
	actions_types = list(/datum/action/item_action/aim_mode)
	aim_fire_delay = 0.125 SECONDS
	aim_speed_modifier = 2

	fire_delay = 0.25 SECONDS
	burst_amount = 3
	accuracy_mult = 1.1
	accuracy_mult_unwielded = 0.8


/obj/item/weapon/gun/rifle/type71/flamer
	name = "\improper Type 71 pulse rifle"
	desc = " This appears to be a less common variant of the usual Type 71, with an undermounted flamethrower and improved iron sights."
	attachable_offset = list("muzzle_x" = 32, "muzzle_y" = 18,"rail_x" = 12, "rail_y" = 23, "under_x" = 20, "under_y" = 13, "stock_x" = 24, "stock_y" = 13)
	starting_attachment_types = list(/obj/item/attachable/attached_gun/flamer/unremovable)

/obj/item/weapon/gun/rifle/type71/commando
	name = "\improper Type 73 'Commando' pulse carbine"
	desc = "An much rarer variant of the standard Type 71, this version contains an integrated supressor, a scope, and lots of fine-tuning. Many parts have been replaced, filed down, and improved upon. As a result, this variant is rarely seen outside of elite units."
	icon_state = "type71"
	item_state = "type71"
	wield_delay = 0 //Ends up being .5 seconds due to scope
	attachable_offset = list("muzzle_x" = 30, "muzzle_y" = 19,"rail_x" = 10, "rail_y" = 22, "under_x" = 21, "under_y" = 18, "stock_x" = 21, "stock_y" = 18)
	starting_attachment_types = list(/obj/item/attachable/suppressor/unremovable/invisible, /obj/item/attachable/scope/unremovable)

	fire_delay = 0.3 SECONDS
	burst_amount = 2
	accuracy_mult = 2
	accuracy_mult_unwielded = 0.8
	damage_mult = 1.3

//-------------------------------------------------------
//TX-16 AUTOMATIC SHOTGUN

/obj/item/weapon/gun/rifle/standard_autoshotgun
	name = "\improper TX-15 automatic shotgun"
	desc = "The TX-15 Automatic Assault Shotgun, produced by Terran Armories. Another iteration of the ZX series of firearms, taking over the SX as the semi-automatic shotgun provided to the TGMC. Compared to the SX, this Shotgun is rifled, and loads primarily longer ranged munitions, being incompatible with buckshot shells. Takes 12-round 16 gauge magazines."
	icon_state = "tx15"
	item_state = "tx15"
	fire_sound = 'sound/weapons/guns/fire/shotgun.ogg'
	dry_fire_sound = 'sound/weapons/guns/fire/shotgun_empty.ogg'
	caliber = CALIBER_16G //codex
	max_shells = 12 //codex
	force = 20
	current_mag = /obj/item/ammo_magazine/rifle/tx15_slug
	attachable_allowed = list(
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonetknife,
		/obj/item/attachable/reddot,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/angledgrip,
		/obj/item/attachable/gyro,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/attached_gun/flamer,
		/obj/item/attachable/attached_gun/shotgun,
		/obj/item/attachable/stock/tx15,
		/obj/item/attachable/compensator,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER|GUN_LOAD_INTO_CHAMBER|GUN_WIELDED_FIRING_ONLY //Its a shotgun type weapon effectively, most shotgun type weapons shouldn't be able to point blank 1 handed.
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_AUTOMATIC)
	starting_attachment_types = list(/obj/item/attachable/stock/tx15)
	attachable_offset = list("muzzle_x" = 30, "muzzle_y" = 16,"rail_x" = 12, "rail_y" = 17, "under_x" = 24, "under_y" = 11, "stock_x" = 26, "stock_y" = 13)
	gun_skill_category = GUN_SKILL_SHOTGUNS

	fire_delay = 1 SECONDS
	accuracy_mult = 1.15
	burst_amount = 1

//-------------------------------------------------------
//T-29 Smart Machine Gun (It's more of a rifle than the SG.)

/obj/item/weapon/gun/rifle/standard_smartmachinegun
	name = "\improper T-29 smart machine gun"
	desc = "The T-29 is the TGMC's current standard IFF-capable medium machine gun. It's known for its ability to lay down heavy fire support very well. It is generally used when someone wants to hold a position or provide fire support. Requires special training and it cannot turn off IFF. It uses 10x26mm ammunition."
	icon_state = "t29"
	item_state = "t29"
	caliber = CALIBER_10x26_CASELESS //codex
	max_shells = 300 //codex
	force = 30
	aim_slowdown = 0.95
	wield_delay = 1.3 SECONDS
	fire_sound = "gun_smartgun"
	dry_fire_sound = 'sound/weapons/guns/fire/m41a_empty.ogg'
	unload_sound = 'sound/weapons/guns/interact/T42_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/T42_reload.ogg'
	current_mag = /obj/item/ammo_magazine/standard_smartmachinegun
	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/t42barrel,
		/obj/item/attachable/bipod,
		/obj/item/attachable/magnetic_harness,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_AMMO_COUNTER|GUN_LOAD_INTO_CHAMBER|GUN_WIELDED_FIRING_ONLY|GUN_IFF
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_AUTOMATIC)
	starting_attachment_types = list(/obj/item/attachable/stock/t29stock, /obj/item/attachable/t29barrel)
	gun_skill_category = GUN_SKILL_SMARTGUN //Uses SG skill for the penalties.
	attachable_offset = list("muzzle_x" = 42, "muzzle_y" = 17,"rail_x" = 15, "rail_y" = 21, "under_x" = 24, "under_y" = 14, "stock_x" = 12, "stock_y" = 13)
	fire_delay = 0.25 SECONDS
	burst_amount = 0
	accuracy_mult_unwielded = 0.5
	accuracy_mult = 1.2
	scatter = -20
	scatter_unwielded = 80

// T-25 Smartrifle

/obj/item/weapon/gun/rifle/standard_smartrifle
	name = "\improper T-25 smartrifle"
	desc = "The T-25 is the TGMC's current standard IFF-capable  rifle. It's known for its ability to lay down quick fire support very well. Requires special training and it cannot turn off IFF. It uses 10x26mm ammunition."
	icon = 'icons/Marine/gun64.dmi'
	icon_state = "t25"
	item_state = "t25"
	caliber = CALIBER_10x26_CASELESS //codex
	max_shells = 50 //codex
	force = 35
	aim_slowdown = 0.55
	wield_delay = 0.6 SECONDS
	fire_sound = "gun_smartgun"
	dry_fire_sound = 'sound/weapons/guns/fire/m41a_empty.ogg'
	unload_sound = 'sound/weapons/guns/interact/T42_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/T42_reload.ogg'
	current_mag = /obj/item/ammo_magazine/rifle/standard_smartrifle
	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/gyro,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/bipod,
		/obj/item/attachable/burstfire_assembly,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/suppressor,
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonetknife,
		/obj/item/attachable/compensator,
		/obj/item/attachable/scope,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/scope/marine,
		/obj/item/attachable/attached_gun/grenade,
		/obj/item/attachable/attached_gun/flamer,
		/obj/item/attachable/attached_gun/shotgun,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_AMMO_COUNTER|GUN_LOAD_INTO_CHAMBER|GUN_WIELDED_FIRING_ONLY|GUN_IFF
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_AUTOMATIC)
	gun_skill_category = GUN_SKILL_SMARTGUN //Uses SG skill for the penalties.
	attachable_offset = list("muzzle_x" = 42, "muzzle_y" = 17,"rail_x" = 15, "rail_y" = 21, "under_x" = 24, "under_y" = 14, "stock_x" = 12, "stock_y" = 13)
	fire_delay = 0.2 SECONDS
	burst_amount = 0
	accuracy_mult_unwielded = 0.5
	accuracy_mult = 1.2
	scatter = -5
	scatter_unwielded = 60

//-------------------------------------------------------
//Sectoid Rifle

/obj/item/weapon/gun/rifle/sectoid_rifle
	name = "\improper alien rifle"
	desc = "An unusual gun of alien origin. It is lacking a trigger or any obvious way to fire it."
	icon_state = "alien_rifle"
	item_state = "alien_rifle"
	fire_sound = 'sound/weapons/guns/fire/alienplasma.ogg'
	fire_rattle = 'sound/weapons/guns/fire/alienplasma.ogg'
	dry_fire_sound = 'sound/weapons/guns/fire/vp70_empty.ogg'
	unload_sound = 'sound/weapons/guns/interact/m41a_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/m4ra_reload.ogg'
	max_shells = 20//codex stuff
	ammo = /datum/ammo/energy/plasma
	muzzleflash_iconstate = "muzzle_flash_pulse"
	current_mag = /obj/item/ammo_magazine/rifle/sectoid_rifle
	wield_delay = 0.4 SECONDS

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER|GUN_ENERGY|GUN_LOAD_INTO_CHAMBER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_BURSTFIRE, GUN_FIREMODE_AUTOBURST)
	attachable_offset = list("muzzle_x" = 32, "muzzle_y" = 18,"rail_x" = 12, "rail_y" = 23, "under_x" = 23, "under_y" = 15, "stock_x" = 22, "stock_y" = 12)

	fire_delay = 0.5 SECONDS
	burst_amount = 3
	burst_delay = 0.15 SECONDS
	accuracy_mult = 2
	accuracy_mult_unwielded = 0.8

//only sectoids can fire it
/obj/item/weapon/gun/rifle/sectoid_rifle/able_to_fire(mob/user)
	. = ..()
	if(!.)
		return
	if(!ishuman(user))
		return FALSE
	var/mob/living/carbon/human/H = user
	if(!(H.species.species_flags & USES_ALIEN_WEAPONS))
		to_chat(user, "<span class='warning'>There's no trigger on this gun, you have no idea how to fire it!</span>")
		return FALSE
	return TRUE


//-------------------------------------------------------
//TL-127 bolt action sniper rifle

/obj/item/weapon/gun/rifle/chambered
	name = "\improper TL-127 bolt action rifle"
	desc = "The TL-127 is the standard issue bolt action rifle used by the TGMC. Known for its long range accuracy and use by marksmen despite its age and lack of IFF. It has an irremoveable scope. Uses 8.6×70mm box magazines."
	icon = 'icons/Marine/gun64.dmi'
	icon_state = "tl127"
	item_state = "tl127"
	fire_sound = 'sound/weapons/guns/fire/tl127.ogg'
	fire_rattle = 'sound/weapons/guns/fire/tl127_low.ogg'
	dry_fire_sound = 'sound/weapons/guns/fire/sniper_empty.ogg'
	unload_sound = 'sound/weapons/guns/interact/m41a_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/m41a_reload.ogg'
	caliber = CALIBER_86X70 //codex
	max_shells = 7 //codex
	current_mag = /obj/item/ammo_magazine/rifle/chamberedrifle
	type_of_casings = "cartridge"
	attachable_allowed = list(
		/obj/item/attachable/scope/unremovable/tl127,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/suppressor,
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonetknife,
		/obj/item/attachable/compensator,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_WIELDED_FIRING_ONLY|GUN_AMMO_COUNTER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO)
	attachable_offset = list("muzzle_x" = 41, "muzzle_y" = 19,"rail_x" = 8, "rail_y" = 21, "under_x" = 37, "under_y" = 16, "stock_x" = 9, "stock_y" = 12)
	starting_attachment_types = list(
		/obj/item/attachable/scope/unremovable/tl127,
		/obj/item/attachable/stock/tl127stock,
	)

	burst_amount = 0
	fire_delay = 1.35 SECONDS
	accuracy_mult = 1.35
	accuracy_mult_unwielded = 0.7
	scatter = -30
	scatter_unwielded = 40
	recoil = 0
	recoil_unwielded = 4
	aim_slowdown = 1
	wield_delay = 1.3 SECONDS

	var/rack_delay = 7
	var/rack_sound = 'sound/weapons/guns/interact/tl-127_bolt.ogg'
	var/racked_bolt = TRUE
	var/cooldown_time

/obj/item/weapon/gun/rifle/chambered/able_to_fire(mob/user)
	. = ..()
	if(!.)
		return
	if(!racked_bolt)
		to_chat(user, "<span class='warning'>[src] does not have a round chambered!</span>")
		return FALSE

/obj/item/weapon/gun/rifle/chambered/cock(mob/user)
	if(racked_bolt)
		to_chat(user, "<span class='warning'>[src] already has a round chambered!</span>")
		return
	if(TIMER_COOLDOWN_CHECK(src, COOLDOWN_RACK_BOLT))
		return
	to_chat(user, "<span class='notice'>You cycle the bolt of the [src], loading in a new round!</span>")
	TIMER_COOLDOWN_START(src, COOLDOWN_RACK_BOLT, rack_delay)
	racked_bolt = TRUE
	playsound(loc, rack_sound, 25, 1, 4)

/obj/item/weapon/gun/rifle/chambered/reload_into_chamber(mob/user)
	. = ..()
	racked_bolt = FALSE

//-------------------------------------------------------
//T-81 Auto-Sniper

/obj/item/weapon/gun/rifle/standard_autosniper
	name = "\improper T-81 automatic sniper rifle"
	desc = "The T-81 is the TerraGov Marine Corps's automatic sniper rifle. It is rather well-known for it's night vision scope and IFF ammo, it however lacks a burst fire mode. It is mostly used by people who prefer to do more careful shooting than most. Uses 8.6x70mm caseless IFF caliber."
	icon_state = "t81"
	item_state = "t81"
	fire_sound = 'sound/weapons/guns/fire/sniper.ogg'
	dry_fire_sound = 'sound/weapons/guns/fire/sniper_empty.ogg'
	unload_sound = 'sound/weapons/guns/interact/m41a_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/m41a_reload.ogg'
	caliber = CALIBER_86X70 //codex
	max_shells = 7 //codex
	current_mag = /obj/item/ammo_magazine/rifle/autosniper
	type_of_casings = "cartridge"
	attachable_allowed = list(
		/obj/item/attachable/autosniperbarrel,
		/obj/item/attachable/scope/nightvision,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/suppressor,
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonetknife,
		/obj/item/attachable/compensator,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_WIELDED_FIRING_ONLY|GUN_AMMO_COUNTER|GUN_IFF
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_AUTOMATIC)
	attachable_offset = list("muzzle_x" = 48, "muzzle_y" = 18,"rail_x" = 23, "rail_y" = 23, "under_x" = 37, "under_y" = 16, "stock_x" = 9, "stock_y" = 12)
	starting_attachment_types = list(
		/obj/item/attachable/autosniperbarrel,
		/obj/item/attachable/scope/nightvision,
	)

	burst_amount = 0
	fire_delay = 1.75 SECONDS
	accuracy_mult = 1.35
	accuracy_mult_unwielded = 0.7
	scatter = -30
	scatter_unwielded = 40
	recoil = 0
	recoil_unwielded = 4
	aim_slowdown = 1
	wield_delay = 1.3 SECONDS

//-------------------------------------------------------
//TX-11 Rifle, based on the gamer-11

/obj/item/weapon/gun/rifle/tx11
	name = "\improper TX-11 combat rifle"
	desc = "The TX-11 is the former standard issue rifle of the TGMC. Most of them have been mothballed into storage long ago, but some still pop up in marine or mercenary hands. It is known for its large magazine size and great burst fire, but rather awkward to use, especially during combat. It uses 4.92×34mm caseless HV ammunition."
	icon_state = "tx11"
	item_state = "tx11"
	caliber = CALIBER_492X34_CASELESS //codex
	max_shells = 70 //codex
	wield_delay = 0.65 SECONDS
	fire_sound = "sound/weapons/guns/fire/m412.ogg"
	dry_fire_sound = 'sound/weapons/guns/fire/m41a_empty.ogg'
	unload_sound = 'sound/weapons/guns/interact/T42_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/T42_reload.ogg'
	current_mag = /obj/item/ammo_magazine/rifle/tx11
	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonetknife,
		/obj/item/attachable/scope/mini/tx11,
		/obj/item/attachable/stock/irremoveable/tx11,
		/obj/item/attachable/magnetic_harness,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_AMMO_COUNTER|GUN_LOAD_INTO_CHAMBER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_BURSTFIRE, GUN_FIREMODE_AUTOMATIC)
	starting_attachment_types = list(/obj/item/attachable/stock/irremoveable/tx11, /obj/item/attachable/scope/mini/tx11)
	attachable_offset = list("muzzle_x" = 31, "muzzle_y" = 17,"rail_x" = 8, "rail_y" = 20, "under_x" = 16, "under_y" = 13, "stock_x" = 19, "stock_y" = 23)
	actions_types = list(/datum/action/item_action/aim_mode)
	aim_fire_delay = 0.125 SECONDS

	fire_delay = 0.225 SECONDS
	burst_amount = 3
	burst_delay = 0.05 SECONDS
	accuracy_mult_unwielded = 0.5
	accuracy_mult = 1.2
	scatter = -10
	scatter_unwielded = 30
	aim_slowdown = 0.45
