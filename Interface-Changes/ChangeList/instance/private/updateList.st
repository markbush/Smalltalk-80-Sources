updateList
	| oldChange newIndex |
	selectionIndex > 0 ifTrue: [oldChange _ list at: selectionIndex].
	filter _ nil.
	filterList do: [:aSymbol | aSymbol notNil ifTrue: [self addFilter: aSymbol]].
	filter isNil ifTrue: [filter _ [:change | true]].
	list _ changes select: [:change | filter value: change].
	newIndex _
		oldChange == nil
			ifTrue: [0]
			ifFalse: [list indexOf: oldChange].
	self updateSelection: newIndex
