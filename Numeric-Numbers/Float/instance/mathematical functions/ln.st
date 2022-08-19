ln
	"see Computer Approximations, pp. 105-111, p. 227 (LOGE 2663)"

	| expt x x2 n P |
	self <= 0.0
		ifTrue: [self error: 'ln not valid for ' , self printString]
		ifFalse:
			[expt _ self exponent.
			n _ Ln2 * (expt - 0.5).
			"mantissa between 0.5 and 1.0"
			x _ self timesTwoPower: 0 - expt.
			x _ x * Sqrt2.
			x _ x - 1.0 / (x + 1.0).
			x2 _ x * x.
			P _ 0.0.
			LnCoefficients do: [:a | P _ P * x2 + a].
			^n + (x * P)]

"2.718284 ln 1.0"
