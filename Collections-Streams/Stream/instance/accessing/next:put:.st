next: anInteger put: anObject
	"Put anObject into the next anInteger elements of the receiver."

	anInteger timesRepeat: [self nextPut: anObject].
	^anObject
