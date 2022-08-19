startUp: aSymbol withHeading: aText
	"Display and make a selection from the receiver as long as the button
	denoted by the symbol, aSymbol, is pressed.  Answer the current selection."

	self displayAt: Sensor cursorPoint withHeading: aText
		during: [Sensor cursorPoint: marker center.
				[self buttonPressed: aSymbol]
					whileFalse: [(frame containsPoint: Sensor cursorPoint) ifFalse: [Display flash: frame]].
				[self buttonPressed: aSymbol]
					whileTrue: [self manageMarker]].
	^selection
