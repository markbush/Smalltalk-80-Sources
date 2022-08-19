* aFraction
	(aFraction isMemberOf: Fraction)
		ifTrue: [^(Fraction
					numerator: numerator * aFraction numerator
					denominator: denominator * aFraction denominator)
					reduced]
		ifFalse: [^self retry: #* coercing: aFraction]
