again
	"Text subsititution.  If the left shift key is down, the substitution is made
	throughout the entire Paragraph.  Otherwise, only the next possible
	subsitution is made."

	| many |
	many _ sensor leftShiftDown.
	self deselect.
	self closeTypeIn.
	self select.
	many
		ifTrue: [[self againOnce] whileTrue]
		ifFalse: [self againOnce ifFalse: [self flash]].
	self moveMarker
