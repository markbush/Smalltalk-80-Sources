negated
	| minVal |
	((self digitAt: 1) = 0 and: [self digitLength = 1]) ifTrue: [^self].
	"Zero"
	minVal _ SmallInteger minVal.
	((self digitAt: 2) = (0 - (minVal // 256)) and: [(self digitAt: 1) = 0])
		ifTrue: [^minVal].
	^self copyto: (LargeNegativeInteger new: self digitLength)
