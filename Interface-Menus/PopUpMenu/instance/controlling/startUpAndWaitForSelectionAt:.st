startUpAndWaitForSelectionAt: aPoint
	"Display and make a selection from the receiver as long as the button denoted
	by the symbol, aSymbol, is pressed.  Answer the current selection."

	  | upperLeft |

	self displayAt: aPoint
		during: [[(Sensor anyButtonPressed and: [frame inside containsPoint: Sensor cursorPoint])]
					whileFalse: [].
				[self buttonPressed: #anyButton]
					whileTrue: [self manageMarker]].
	^selection
