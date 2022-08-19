exampleShrink
	[Sensor redButtonPressed] whileFalse:
		[((Form fromDisplay: (Sensor cursorPoint extent: 150@150))
			shrinkBy: 3 @ 3)
				displayAt: 0 @ 0]

	"Form exampleShrink."
