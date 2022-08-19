replaceSelectionWith: aText
	beginTypeInBlock == nil ifTrue: [UndoSelection _ self selection].
	paragraph
		replaceFrom: startBlock stringIndex
		to: stopBlock stringIndex - 1
		with: aText
		displaying: true.
	startBlock _ paragraph characterBlockForIndex: startBlock stringIndex.
	stopBlock _
		paragraph characterBlockForIndex: startBlock stringIndex + aText size
