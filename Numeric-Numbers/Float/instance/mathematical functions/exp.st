exp
	"see Computer Approximations, pp. 96-104, p. 205 (EXPB 1065)"

	| a n1 x x2 P Q |
	self abs > 9212.0
		ifTrue: ["Float maxVal ln"
			"1.0 exp"
			self error: 'exp overflow']
		ifFalse:
			[x _ self / Ln2.
			n1 _ 2.0 raisedTo: x truncated.
			(x _ x - x truncated) >= 0.5
				ifTrue:
					[n1 _ n1 * Sqrt2.
					x _ x - 0.5].
			x2 _ x * x.
			"compute 2.0 power: x"
			P _ Q _ 0.0.
			ExpPCoefficients do: [:a | P _ P * x2 + a].
			ExpQCoefficients do: [:a | Q _ Q * x2 + a].
			^n1 * (Q + (x * P) / (Q - (x * P)))]
