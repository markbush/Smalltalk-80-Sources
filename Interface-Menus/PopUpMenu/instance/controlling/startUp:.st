startUp: aSymbol
	"Display and make a selection from the receiver as long as the button
	denoted by the symbol, aSymbol, is pressed.  Answer the current selection."

	self displayAt: Sensor cursorPoint
		during: [Sensor cursorPoint: marker center.
				[self buttonPressed: aSymbol] whileFalse: [].
				[self buttonPressed: aSymbol] whileTrue: [self manageMarker]].
	^selection
