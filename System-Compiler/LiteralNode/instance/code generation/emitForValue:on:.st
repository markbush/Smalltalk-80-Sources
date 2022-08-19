emitForValue: stack on: strm
	code < 256
		ifTrue: [strm nextPut: code]
		ifFalse: [self emitLong: LdInstLong on: strm].
	stack push: 1
