selectCurrentTypeIn: characterStream
	"The user just finished typing in some text and then typed the esc key.  The
	typed text becomes the current text selection."

	sensor keyboard.		"flush character"
	characterStream isEmpty
		ifTrue:
			[self deselect]
		ifFalse:
			[self replaceSelectionWith:
				(Text string: characterStream contents emphasis: emphasisHere).
			startBlock _ stopBlock copy].
	self closeTypeIn.
	startBlock = stopBlock
		ifFalse: [startBlock _
					paragraph characterBlockForIndex:
						stopBlock stringIndex - CurrentSelection size].
	self select.
	^true
