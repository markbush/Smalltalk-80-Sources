exampleSpaceFill
	"This example demonstrates the area filling algorithm.
	The example starts by having the user sketch on the screen and then select
	a rectangular area of the screen which includes all off the area to be filled.
	Finally, (with crosshair cursor), the user points as the interior of the region
	to be filled, and the filling begins with that place as its seed"

	| f r interiorPoint |
	Form exampleSketch.		"sketch a little area with an enclosed region"
	r _ Rectangle fromUser.
	f _ Form fromDisplay: r.
	Cursor crossHair showWhile:
		[interiorPoint _ Sensor waitButton - r origin].
	Cursor execute showWhile:
		[f shapeFill: Form gray interiorPoint: interiorPoint].
	f displayOn: Display at: r origin

	"Form exampleSpaceFill."
