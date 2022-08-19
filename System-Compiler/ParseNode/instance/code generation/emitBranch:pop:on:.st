emitBranch: dist pop: stack on: strm
	stack pop: 1.
	dist = 0
		ifTrue: [strm nextPut: Pop]
		ifFalse: [self emitShortOrLong: dist code: Bfp on: strm]
