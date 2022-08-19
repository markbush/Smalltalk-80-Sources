contents: newText notifying: requestor
	| oldChange newChange |
	selectionIndex = 0 ifTrue: [^false].
	oldChange _ list at: selectionIndex.
	newChange _ oldChange accept: newText notifying: requestor.
	newChange isNil ifTrue: [^false].
	list at: selectionIndex put: newChange.
	changes at: (changes indexOf: oldChange) put: newChange.
	self contents: newText.
	self changed: #list
