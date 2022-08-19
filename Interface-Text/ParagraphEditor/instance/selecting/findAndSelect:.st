findAndSelect: aString
	| index |
	index _ paragraph text findString: aString startingAt: stopBlock stringIndex.
	index = 0 ifTrue: [^false].
	self selectAndScrollFrom: index to: index + aString size-1.
	^true
