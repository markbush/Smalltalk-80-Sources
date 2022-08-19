emitJump: dist on: strm
	dist = 0 ifFalse: [self emitShortOrLong: dist code: Jmp on: strm]
