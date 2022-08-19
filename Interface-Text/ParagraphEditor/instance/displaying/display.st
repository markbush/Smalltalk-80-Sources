display
	"Redisplay the paragraph."
	| selectionState |
	selectionState _ selectionShowing.
	self deselect.
	paragraph displayOn: Display.
	selectionState ifTrue: [self select]
