atAllPut: anObject
	"Put anObject at every one of the receiver's indices."

	| index size |
	index _ 0.
	size _ self size.
	[(index _ index + 1) <= size]
		whileTrue: [self at: index put: anObject]
