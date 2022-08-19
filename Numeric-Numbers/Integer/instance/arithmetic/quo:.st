quo: aNumber
	"Divide the receiver by the argument and return the result.
	Round the result down towards zero to make it a whole integer."

	| ng quo |
	aNumber isInteger
		ifTrue:
			[ng _ self negative == aNumber negative == false.
			quo _ (self digitDiv: aNumber neg: ng) at: 1.
			(quo lastDigit = 0 and: [quo digitLength >= 2])
				ifTrue: [^(quo growby: -1) truncated].
			^quo truncated]
		ifFalse: [^self retry: #quo: coercing: aNumber]
