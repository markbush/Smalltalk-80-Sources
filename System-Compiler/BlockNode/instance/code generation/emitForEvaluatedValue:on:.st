emitForEvaluatedValue: stack on: aStream
	self emitExceptLast: stack on: aStream.
	statements last emitForValue: stack on: aStream
