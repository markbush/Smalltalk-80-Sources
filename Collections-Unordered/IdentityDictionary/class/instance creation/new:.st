new: size
	"Answer with a new instance of me, whose initial capacity is size.
	Size must be a power of 2."

	(size bitAnd: size - 1) = 0 ifFalse: [self error: 'size must be a power of 2'].
	size >= 1 ifFalse: [self error: 'size must be >= 1'].
	^super new: size
