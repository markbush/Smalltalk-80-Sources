display
	"Sets the SwitchView mode to 'normal', displays the border, displays the
	inside and, if its model is 'on', complements the inside."

	self displayBorder.
	complemented _ self interrogateModel.
	highlightForm == nil
		ifTrue: [self displayView.
				complemented ifTrue: [self highlight]]
		ifFalse: [self displaySpecial]
