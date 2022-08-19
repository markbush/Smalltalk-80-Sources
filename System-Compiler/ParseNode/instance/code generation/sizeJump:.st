sizeJump: dist
	dist = 0 ifTrue: [^0].
	^self sizeShortOrLong: dist
