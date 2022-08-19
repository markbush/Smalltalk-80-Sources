againOnce
	| nextStartIndex |
	nextStartIndex _
		paragraph text findString: UndoSelection startingAt: stopBlock stringIndex.
	nextStartIndex = 0 ifTrue: [^false].
	self deselect.
	startBlock _ paragraph characterBlockForIndex: nextStartIndex.
	stopBlock _ paragraph characterBlockForIndex: nextStartIndex + UndoSelection size.
	CurrentSelection = UndoSelection
		ifFalse: [self replaceSelectionWith: CurrentSelection].
	self selectAndScroll.
	^true
