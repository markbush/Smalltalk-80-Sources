/ aFraction
	(aFraction isMemberOf: Fraction)
		ifTrue: [^self * aFraction reciprocal]
		ifFalse: [^self retry: #/ coercing: aFraction]
