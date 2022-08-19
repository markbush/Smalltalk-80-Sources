< aFraction
	(aFraction isMemberOf: Fraction)
		ifTrue: [aFraction numerator = 0
				ifTrue: [^numerator < 0]
				ifFalse: [^self - aFraction < 0]]
		ifFalse: [^self retry: #< coercing: aFraction]
