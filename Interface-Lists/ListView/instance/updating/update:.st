update: aSymbol
	aSymbol == #list
		ifTrue:
			[self list: model list.
			self displayView.
			^self].
	aSymbol == #listIndex
		ifTrue:
			[self moveSelectionBox: model listIndex.
			^self]
