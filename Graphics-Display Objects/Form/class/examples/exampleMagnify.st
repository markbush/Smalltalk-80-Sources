exampleMagnify
	[Sensor redButtonPressed] whileFalse:
		[((Form fromDisplay: (Sensor cursorPoint extent: 50@50))
			magnifyBy: 3 @ 3)
				displayAt: 0 @ 0]

	"Form exampleMagnify."
