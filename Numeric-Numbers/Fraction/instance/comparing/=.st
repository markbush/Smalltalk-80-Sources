= aFraction
	(aFraction isMemberOf: Fraction)
		ifTrue: [aFraction numerator = 0
				ifTrue: [^numerator = 0]
				ifFalse: [^aFraction numerator = numerator
							and: [aFraction denominator = denominator]]]
		ifFalse: [^self retry: #= coercing: aFraction]
