sizeBranch: dist
	dist = 0 ifTrue: [^1].
	^self sizeShortOrLong: dist
