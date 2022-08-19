emitExceptLast: stack on: aStream
	1 to: statements size - 1 do:
		[:i | (statements at: i) emitForEffect: stack on: aStream]
