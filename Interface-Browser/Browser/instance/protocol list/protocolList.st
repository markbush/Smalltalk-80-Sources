protocolList
	className == nil ifTrue: [^ nil].
	^ self selectedClass organization categories
