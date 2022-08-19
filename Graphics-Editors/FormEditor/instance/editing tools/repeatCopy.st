repeatCopy
	"As long as the red button is pressed, copy the source form onto the display screen."
	[sensor redButtonPressed]
		whileTrue:
			[form
				displayOn: Display
				at: self cursorPoint
				clippingBox: view insetDisplayBox
				rule: mode
				mask: color]
