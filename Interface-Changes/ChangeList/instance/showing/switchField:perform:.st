switchField: index perform: aSymbol
	index > fieldList size
		ifTrue:
			[fieldList _ fieldList , (Array new: index - fieldList size)].
	(fieldList at: index) isNil
		ifTrue:
			[fieldList at: index put: aSymbol]
		ifFalse:
			[fieldList at: index put: nil].
	self updateSelection: selectionIndex
