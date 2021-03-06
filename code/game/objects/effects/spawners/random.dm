/obj/effect/spawner/random
	name = "Random Object"
	desc = "This item type is used to spawn random objects at round-start"
	icon = 'icons/landmarks.dmi'
	icon_state = "x3"
	var/spawn_nothing_percentage = 0 // this variable determines the likelyhood that this random object will not spawn anything
	var/spawn_on_roundstart = FALSE

// creates a new object and deletes itself
/obj/effect/spawner/random/Initialize()
	..()

	if(!prob(spawn_nothing_percentage))
		if(spawn_on_roundstart)
			alpha = 0
			return INITIALIZE_HINT_ROUNDSTART
		else
			spawn_item()

	return INITIALIZE_HINT_QDEL

/obj/effect/spawner/random/LateInitialize()
	spawn_item()
	qdel(src)

// this function should return a specific item to spawn
/obj/effect/spawner/random/proc/item_to_spawn()
	return 0


// creates the random item
/obj/effect/spawner/random/proc/spawn_item()
	var/build_path = item_to_spawn()
	return (new build_path(src.loc))


/obj/effect/spawner/random/tool
	name = "Random Tool"
	desc = "This is a random tool"
	icon_state = "random_tool"
	item_to_spawn()
		return pick(/obj/item/tool/screwdriver,\
					/obj/item/tool/wirecutters,\
					/obj/item/tool/weldingtool,\
					/obj/item/tool/crowbar,\
					/obj/item/tool/wrench,\
					/obj/item/device/flashlight)


/obj/effect/spawner/random/technology_scanner
	name = "Random Scanner"
	desc = "This is a random technology scanner."
	icon = 'icons/obj/items/devices.dmi'
	icon_state = "atmos"
	item_to_spawn()
		return pick(prob(5);/obj/item/device/t_scanner,\
					prob(2);/obj/item/device/radio,\
					prob(5);/obj/item/device/analyzer)


/obj/effect/spawner/random/powercell
	name = "Random Powercell"
	desc = "This is a random powercell."
	icon_state = "random_cell_battery"
	item_to_spawn()
		return pick(prob(10);/obj/item/cell/crap,\
					prob(40);/obj/item/cell,\
					prob(40);/obj/item/cell/high,\
					prob(9);/obj/item/cell/super,\
					prob(1);/obj/item/cell/hyper)


/obj/effect/spawner/random/bomb_supply
	name = "Bomb Supply"
	desc = "This is a random bomb supply."
	icon = 'icons/obj/items/new_assemblies.dmi'
	icon_state = "signaller"
	item_to_spawn()
		return pick(/obj/item/device/assembly/igniter,\
					/obj/item/device/assembly/prox_sensor,\
					/obj/item/device/assembly/signaller,\
					/obj/item/device/multitool)


/obj/effect/spawner/random/toolbox
	name = "Random Toolbox"
	desc = "This is a random toolbox."
	icon_state = "random_toolbox"
	item_to_spawn()
		return pick(prob(3);/obj/item/storage/toolbox/mechanical,\
					prob(2);/obj/item/storage/toolbox/electrical,\
					prob(2);/obj/item/storage/toolbox/mechanical/green,\
					prob(1);/obj/item/storage/toolbox/emergency)


/obj/effect/spawner/random/tech_supply
	name = "Random Tech Supply"
	desc = "This is a random piece of technology supplies."
	icon = 'icons/obj/structures/machinery/power.dmi'
	icon_state = "cell"
	spawn_nothing_percentage = 50
	item_to_spawn()
		return pick(prob(3);/obj/effect/spawner/random/powercell,\
					prob(2);/obj/effect/spawner/random/technology_scanner,\
					prob(1);/obj/item/packageWrap,\
					prob(2);/obj/effect/spawner/random/bomb_supply,\
					prob(1);/obj/item/tool/extinguisher,\
					prob(1);/obj/item/clothing/gloves/fyellow,\
					prob(3);/obj/item/stack/cable_coil,\
					prob(2);/obj/effect/spawner/random/toolbox,\
					prob(2);/obj/item/storage/belt/utility,\
					prob(5);/obj/effect/spawner/random/tool)


/obj/effect/spawner/random/attachment
	name = "Random Attachment"
	desc = "This is a random attachment"
	icon_state = "random_attachment"
	item_to_spawn()
		return pick(prob(3);/obj/item/attachable/flashlight,\
					prob(3);/obj/item/attachable/reddot,\
					prob(3);/obj/item/attachable/extended_barrel,\
					prob(3);/obj/item/attachable/magnetic_harness,\
					prob(2);/obj/item/attachable/flashlight/grip,\
					prob(2);/obj/item/attachable/suppressor,\
					prob(2);/obj/item/attachable/burstfire_assembly,\
					prob(2);/obj/item/attachable/compensator,\
					prob(1);/obj/item/attachable/scope/mini_iff,\
					prob(1);/obj/item/attachable/heavy_barrel,\
					prob(1);/obj/item/attachable/scope/mini)


/obj/effect/spawner/random/supply_kit
	name = "Random Supply Kit"
	desc = "This is a random kit."
	icon_state = "random_kit"
	item_to_spawn()
		return pick(prob(3);/obj/item/storage/box/kit/pursuit,\
					prob(3);/obj/item/storage/box/kit/mini_intel,\
					prob(3);/obj/item/storage/box/kit/mini_jtac,\
					prob(2);/obj/item/storage/box/kit/mou53_sapper,\
					prob(1);/obj/item/storage/box/kit/heavy_support)

/obj/effect/spawner/random/toy
	name = "Random Toy"
	desc = "This is a random toy."
	icon_state = "ipool"
	item_to_spawn()
		return pick(/obj/item/storage/wallet,\
					/obj/item/storage/photo_album,\
					/obj/item/storage/box/snappops,\
					/obj/item/storage/fancy/crayons,\
					/obj/item/storage/belt/champion,\
					/obj/item/tool/soap/deluxe,\
					/obj/item/tool/pickaxe/silver,\
					/obj/item/tool/pen/invisible,\
					/obj/item/explosive/grenade/smokebomb,\
					/obj/item/corncob,\
					/obj/item/poster,\
					/obj/item/toy/bikehorn,\
					/obj/item/toy/beach_ball,\
					/obj/item/weapon/melee/banhammer,\
					/obj/item/toy/balloon,\
					/obj/item/toy/blink,\
					/obj/item/toy/crossbow,\
					/obj/item/toy/gun,\
					/obj/item/toy/katana,\
					/obj/item/toy/prize/deathripley,\
					/obj/item/toy/prize/durand,\
					/obj/item/toy/prize/fireripley,\
					/obj/item/toy/prize/gygax,\
					/obj/item/toy/prize/honk,\
					/obj/item/toy/prize/marauder,\
					/obj/item/toy/prize/mauler,\
					/obj/item/toy/prize/odysseus,\
					/obj/item/toy/prize/phazon,\
					/obj/item/toy/prize/ripley,\
					/obj/item/toy/prize/seraph,\
					/obj/item/toy/spinningtoy,\
					/obj/item/toy/sword,\
					/obj/item/reagent_container/food/snacks/grown/ambrosiadeus,\
					/obj/item/reagent_container/food/snacks/grown/ambrosiavulgaris,\
					/obj/item/clothing/accessory/horrible)

GLOBAL_VAR_INIT(spawn_ob, TRUE)

/obj/effect/spawner/random/warhead
	name = "random orbital warhead"
	desc = "This is a random orbital warhead."
	icon = 'icons/obj/items/new_assemblies.dmi'
	icon = 'icons/obj/structures/props/almayer_props.dmi'
	icon_state = "ob_warhead_1"
	spawn_on_roundstart = TRUE

/obj/effect/spawner/random/warhead/item_to_spawn()
	if(!GLOB.spawn_ob)
		return /obj/item/paper/warhead_recycle

	var/list/spawnables = list(
		/obj/structure/ob_ammo/warhead/explosive,
		/obj/structure/ob_ammo/warhead/incendiary,
		/obj/structure/ob_ammo/warhead/cluster
	)
	return pick(spawnables)
