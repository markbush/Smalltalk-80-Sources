position: anInteger
	"Set position to anInteger as long as anInteger is within the bounds of the
	receiver's contents.  If it is not, cause an error."

	anInteger >= 0 & (anInteger <= readLimit)
		ifTrue: [position _ anInteger]
		ifFalse: [self positionError]
