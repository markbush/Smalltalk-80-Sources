getList
	| item |
	oneItem ifTrue:
		[item _ self initialSelection.
		item == nil ifTrue: [^ nil].
		^ Array with: item].
	listMsg == nil ifTrue: [^nil].
	^ model perform: listMsg
