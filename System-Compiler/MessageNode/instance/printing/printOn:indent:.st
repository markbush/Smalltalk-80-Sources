printOn: aStream indent: level
	receiver == nil
		ifFalse: [receiver printOn: aStream indent: level precedence: precedence].
	(special between: 1 and: 6)
		ifTrue:
			[self printIfOn: aStream indent: level]
		ifFalse:
			[self
				printKeywords: selector key
				arguments: arguments
				on: aStream
				indent: level]
