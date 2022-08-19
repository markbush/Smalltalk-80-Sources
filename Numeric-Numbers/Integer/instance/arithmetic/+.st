+ aNumber
	"Add the receiver to the argument and answer with the result."

	aNumber isInteger
		ifTrue: [self negative == aNumber negative
					ifTrue: [^(self digitAdd: aNumber) truncated]
					ifFalse: [^self digitSubtract: aNumber]]
		ifFalse: [^self retry: #+ coercing: aNumber]
