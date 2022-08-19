controlTerminate

	view updateDisplay.
	toolMenu notNil ifTrue:		"check for Galley compatibility"
		[underToolMenu displayAt: toolMenu view displayBox origin.
		underToolMenu _ nil].
