storeOn: aStream
	"Use the literal form if possible."

	self isLiteral
		ifTrue:
			[aStream nextPut: $#; nextPut: $(.
			self do:
				[:element |
				element printOn: aStream.
				aStream space].
			aStream nextPut: $)]
		ifFalse: [super storeOn: aStream]
