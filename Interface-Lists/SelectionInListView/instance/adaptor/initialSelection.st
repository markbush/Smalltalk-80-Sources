initialSelection
	initialSelectionMsg == nil ifTrue: [^ nil].
	^ model perform: initialSelectionMsg
