/obj/item/clothing/shoes/galoshes
	desc = "A pair of yellow rubber boots, designed to prevent slipping on wet surfaces."
	name = "galoshes"
	icon_state = "galoshes"
	permeability_coefficient = 0.01
	clothing_traits = list(TRAIT_NO_SLIP_WATER)
	slowdown = SHOES_SLOWDOWN+1
	strip_delay = 30
	equip_delay_other = 50
	resistance_flags = NONE
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, FIRE = 40, ACID = 75)
	can_be_bloody = FALSE
	custom_price = PAYCHECK_EASY * 3
	can_be_tied = FALSE

/obj/item/clothing/shoes/galoshes/dry
	name = "absorbent galoshes"
	desc = "A pair of purple rubber boots, designed to prevent slipping on wet surfaces while also drying them."
	icon_state = "galoshes_dry"

/obj/item/clothing/shoes/galoshes/dry/Initialize(mapload)
	. = ..()
	RegisterSignal(src, COMSIG_SHOES_STEP_ACTION, PROC_REF(on_step))

/obj/item/clothing/shoes/galoshes/dry/proc/on_step()
	SIGNAL_HANDLER

	var/turf/open/t_loc = get_turf(src)
	SEND_SIGNAL(t_loc, COMSIG_TURF_MAKE_DRY, TURF_WET_WATER, TRUE, INFINITY)
