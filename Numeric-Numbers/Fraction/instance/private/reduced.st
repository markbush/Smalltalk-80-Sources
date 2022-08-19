reduced
	| gcd numer denom |
	numerator = 0 ifTrue: [^0].
	gcd _ numerator gcd: denominator.
	numer _ numerator // gcd.
	denom _ denominator // gcd.
	denom = 1 ifTrue: [^numer].
	^Fraction numerator: numer denominator: denom
