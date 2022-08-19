< anInteger
	"Compare the receiver with the argument and return true if the receiver is
	less than the argument. Otherwise return false."

	anInteger isInteger
		ifTrue: [self negative == anInteger negative
					ifTrue: [self negative
								ifTrue: [^(self digitCompare: anInteger) > 0]
								ifFalse: [^(self digitCompare: anInteger) < 0]]
					ifFalse: [^self negative]]
		ifFalse: [^self retry: #< coercing: anInteger]
