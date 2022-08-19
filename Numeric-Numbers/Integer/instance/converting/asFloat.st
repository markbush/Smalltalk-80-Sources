asFloat
	"Answer with a Float that represents the receiver."

	| factor sum |
	sum _ 0.0.
	factor _ self sign asFloat.
	1 to: self size do:
		[:i |
		sum _ (self digitAt: i) * factor + sum.
		factor _ factor * 256.0].
	^sum
