
/obj/structure/closet/malf/suits
	desc = "It's a storage unit for operational gear."
	icon_state = "syndicate"
	icon_closed = "syndicate"
	icon_opened = "syndicate_open"

/obj/structure/closet/malf/suits/Initialize()
	. = ..()
	new /obj/item/tank/jetpack/void(src)
	new /obj/item/clothing/mask/breath(src)
	new /obj/item/clothing/head/helmet/space/uscm(src)
	new /obj/item/clothing/suit/space/uscm(src)
	new /obj/item/tool/crowbar(src)
	new /obj/item/cell(src)
	new /obj/item/device/multitool(src)
