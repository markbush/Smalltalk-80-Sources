literals
	"Answer with an array of the literals referenced by the receiver."

	| literals numberLiterals index |
	literals _ Array new: (numberLiterals _ self numLiterals).
	index _ 0.
	[(index _ index + 1) <= numberLiterals]
		whileTrue: [literals at: index put: (self objectAt: index + 1)].
	^literals
