printOn: aStream
	| tooMany |
	tooMany _ aStream position + self maxPrint.
	aStream nextPutAll: self class name, ' ('.
	self associationsDo:
		[:element |
		aStream position > tooMany ifTrue: [aStream nextPutAll: '...etc...)'. ^self].
		element printOn: aStream.
		aStream space].
	aStream nextPut: $)
