atEnd
	"Answer true if current position is >= end of file position."

	closed ifTrue: [self reopen].
	position < readLimit ifTrue: [^false].
	(page lastPage or: [self nextPage isNil])
		ifTrue: [^true].
	^position = readLimit
