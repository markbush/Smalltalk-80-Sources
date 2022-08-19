sizeShortOrLong: dist
	(1 <= dist and: [dist <= JmpLimit])
		ifTrue: [^1].
	^2
