- aNumber
	"Subtract the argument from the receiver and answer with the result."

	aNumber isInteger
		ifTrue: [self negative == aNumber negative
					ifTrue: [^self digitSubtract: aNumber]
					ifFalse: [^self digitAdd: aNumber]]
		ifFalse: [^self retry: #- coercing: aNumber]
