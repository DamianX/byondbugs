/world/New()
	..()
	world:icon = 1 // Should throw a runtime error, icon does not exist on world
	world.log << isnull(world:icon) // outputs null, should throw instead