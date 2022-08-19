emitForValue: stack on: aStream
	receiver emitForValue: stack on: aStream.
	1 to: messages size - 1 do:
		[:i |
		aStream nextPut: Dup.
		stack push: 1.
		(messages at: i) emitForValue: stack on: aStream.
		aStream nextPut: Pop.
		stack pop: 1].
	messages last emitForValue: stack on: aStream
