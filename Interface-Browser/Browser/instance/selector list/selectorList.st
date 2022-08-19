selectorList
	protocol == nil ifTrue: [^ nil].
	^ self selectedClass organization listAtCategoryNamed: protocol
