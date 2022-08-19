insert: anObject before: spot
	| index delta spotIndex|
	spotIndex _ spot.
	delta _ spotIndex - firstIndex.
	firstIndex = 1
		ifTrue:
			[self makeRoomAtFirst.
			spotIndex _ firstIndex + delta].
	index _ firstIndex _ firstIndex - 1.
	[index < (spotIndex - 1)]
		whileTrue:
			[self basicAt: index put: (self basicAt: index + 1).
			index _ index + 1].
	self basicAt: index put: anObject.
	^anObject
