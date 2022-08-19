/ aNumber
	"Divide the receiver by the argument and answer with the result if the division
	is exact."

	| quoRem |
	aNumber isInteger
		ifTrue:
			[quoRem _ self digitDiv: aNumber neg: self negative ~~ aNumber negative.
			(quoRem at: 2) = 0
				ifTrue: [^(quoRem at: 1) truncated]
				ifFalse: [^(Fraction numerator: self denominator: aNumber) reduced]]
		ifFalse: [^self retry: #/ coercing: aNumber]
