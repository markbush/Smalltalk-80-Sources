switchFilter: index perform: aSymbol
	index > filterList size
		ifTrue:
			[filterList _ filterList , (Array new: index - filterList size)].
	(filterList at: index) isNil
		ifTrue:
			[selectionIndex > 0 ifTrue:
				[filterKey _ list at: selectionIndex.
				filterList at: index put: aSymbol]]
		ifFalse:
			[filterList at: index put: nil].
	self updateList
