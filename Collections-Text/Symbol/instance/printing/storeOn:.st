storeOn: aStream
	self isLiteral
		ifTrue:
			[aStream nextPut: $#.
			aStream nextPutAll: self]
		ifFalse:
			[super storeOn: aStream.
			aStream nextPutAll: ' asSymbol']
