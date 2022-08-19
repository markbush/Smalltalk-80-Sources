restoreCurrent
	selectionIndex > 0 ifTrue:
		[removed remove: (list at: selectionIndex) ifAbsent: []]
