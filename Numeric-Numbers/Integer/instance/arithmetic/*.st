* aNumber
	"Multiply the receiver by the argument and answer with the result."

	aNumber isInteger
		ifTrue: [^(self
					digitMultiply: aNumber
					neg: self negative ~~ aNumber negative) truncated]
		ifFalse: [^self retry: #* coercing: aNumber]
