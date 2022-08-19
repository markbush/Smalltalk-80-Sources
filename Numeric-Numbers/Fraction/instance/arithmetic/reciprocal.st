reciprocal
	numerator = 0 ifTrue: [self error: '0 has no reciprocal'].
	numerator = 1 ifTrue: [^denominator].
	numerator = -1 ifTrue: [^denominator negated].
	^Fraction numerator: denominator denominator: numerator
