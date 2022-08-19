toggleListIndex: anInteger
	selectionIndex = anInteger
		ifTrue:
			[self deselect]
		ifFalse:
			[selectionIndex _ anInteger.
			contents _ self selection].
	self changed: #listIndex
