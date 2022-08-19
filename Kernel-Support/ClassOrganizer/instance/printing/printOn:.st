printOn: aStream
	| elementIndex lastStop |
	elementIndex _ 1.
	lastStop _ 1.
	1 to: categoryArray size do:
		[:i |
		aStream nextPut: $(.
		(categoryArray at: i) asString printOn: aStream.
		[elementIndex <= (categoryStops at: i)]
			whileTrue:
				[aStream space.
				(elementArray at: elementIndex) printOn: aStream.
				elementIndex _ elementIndex + 1].
		aStream nextPut: $).
		aStream cr]
