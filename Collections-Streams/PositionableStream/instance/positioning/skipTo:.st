skipTo: anObject
	"Position the receiver past the next occurrance of anObject.  Answer true if
	anObject is found, false otherwise."

	[self atEnd]
		whileFalse: [self next = anObject ifTrue: [^true]].
	^false
