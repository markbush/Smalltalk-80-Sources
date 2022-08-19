- aFraction
	(aFraction isMemberOf: Fraction)
		ifTrue: [^self + aFraction negated]
		ifFalse: [^self retry: #- coercing: aFraction]
