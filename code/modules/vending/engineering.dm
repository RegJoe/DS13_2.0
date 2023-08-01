//This one's from bay12
/obj/machinery/vending/engineering
	name = "\improper Robco Tool Maker"
	desc = "Everything you need for do-it-yourself station repair."
	icon_state = "engi"
	icon_deny = "engi-deny"
	panel_type = "panel10"
	req_access = list(ACCESS_ENGINE_EQUIP)
	products = list(
		/obj/item/clothing/under/rank/engineering/ds_rigshirt = 4,
		/obj/item/clothing/under/rank/engineering/ds_engineer = 4,
		/obj/item/clothing/shoes/workboots/engineer = 4,
		/obj/item/clothing/head/hardhat = 4,
		/obj/item/storage/belt/utility = 4,
		/obj/item/clothing/glasses/meson/engine = 4,
		/obj/item/clothing/gloves/color/yellow = 4,
		/obj/item/screwdriver = 12,
		/obj/item/crowbar = 12,
		/obj/item/wirecutters = 12,
		/obj/item/multitool = 12,
		/obj/item/wrench = 12,
		/obj/item/t_scanner = 12,
		/obj/item/stock_parts/cell = 8,
		/obj/item/weldingtool = 8,
		/obj/item/clothing/head/welding/demon = 2,
		/obj/item/clothing/head/welding/knight = 2,
		/obj/item/clothing/head/welding/fancy = 2,
		/obj/item/clothing/head/welding/engie = 2,
		/obj/item/light/tube = 10,
		/obj/item/clothing/suit/fire = 4,
		/obj/item/stock_parts/scanning_module = 5,
		/obj/item/stock_parts/micro_laser = 5,
		/obj/item/stock_parts/matter_bin = 5,
		/obj/item/stock_parts/manipulator = 5
		)
	refill_canister = /obj/item/vending_refill/engineering
	default_price = PAYCHECK_EASY
	extra_price = PAYCHECK_COMMAND * 1.5
	payment_department = ACCOUNT_ENG
	light_mask = "engi-light-mask"

	discount_access = ACCESS_ENGINE

/obj/item/vending_refill/engineering
	machine_name = "Robco Tool Maker"
	icon_state = "refill_engi"
