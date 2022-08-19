emitShortOrLong: dist code: shortCode on: strm
	(1 <= dist and: [dist <= JmpLimit])
		ifTrue: [strm nextPut: shortCode + dist - 1]
		ifFalse: [self emitLong: dist code: shortCode + 16 on: strm]
