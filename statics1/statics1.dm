/obj/canister
	icon_state = "canister"

/obj/canister/proc/get_overlay()
	var/static/a = icon_state
	return a

//

/obj/tank/proc/get_overlay_icon_state()
	return "this is never called"

/obj/tank/proc/get_overlay()
	var/static/a = get_overlay_icon_state()
	return a

/world/proc/get_overlay_icon_state()
	return "world was here"

//

/world/New()
	..()
	var/obj/canister/C = new
	world.log << json_encode(C.get_overlay()) // Outputs null

	var/obj/tank/T = new
	world.log << json_encode(T.get_overlay()) // Outputs "world was here"