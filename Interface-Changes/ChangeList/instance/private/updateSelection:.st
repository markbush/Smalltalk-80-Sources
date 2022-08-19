updateSelection: newIndex
	self deselect.
	self changed: #list.
	newIndex > 0 ifTrue:
		[self toggleListIndex: newIndex]
