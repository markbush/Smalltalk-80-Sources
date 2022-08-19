+ aFraction
	| commonDenominator newNumerator |
	(aFraction isMemberOf: Fraction)
		ifTrue:
			[denominator = aFraction denominator
				ifTrue: [^(Fraction
							numerator: numerator + aFraction numerator
							denominator: denominator) reduced].
			commonDenominator _ denominator lcm: aFraction denominator.
			newNumerator _ numerator
								* (commonDenominator / denominator)
								+ (aFraction numerator *
									(commonDenominator / aFraction denominator)).
			^(Fraction
				numerator: newNumerator
				denominator: commonDenominator) reduced]
		ifFalse: [^self retry: #+ coercing: aFraction]
