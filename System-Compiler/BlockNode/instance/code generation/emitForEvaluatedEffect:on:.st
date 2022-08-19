emitForEvaluatedEffect: stack on: aStream
	self returns
		ifTrue:
			[self emitForEvaluatedValue: stack on: aStream.
			stack pop: 1]
		ifFalse:
			[self emitExceptLast: stack on: aStream.
			statements last emitForEffect: stack on: aStream]
