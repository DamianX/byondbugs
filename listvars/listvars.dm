/world/New()
	..()
	var/obj/L = list() // Defined as obj so that accessing /obj vars can compile, but should fail at runtime.
	world.log << isnull(L.icon) // Outputs 1, should throw instead

	var/list/L2 = list()
	world.log << isnull(L2:icon_state) // Outputs 1, should throw instead.