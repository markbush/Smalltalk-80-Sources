= anInteger
	"Compare the receiver with the argument and return true if the receiver is
	equal to the argument. Otherwise return false."

	anInteger isInteger
		ifTrue: [anInteger positive & self positive | (anInteger negative & self negative)
					ifTrue: [^(self digitCompare: anInteger) = 0]
					ifFalse: [^false]]
		ifFalse: [^self retry: #= coercing: anInteger]
