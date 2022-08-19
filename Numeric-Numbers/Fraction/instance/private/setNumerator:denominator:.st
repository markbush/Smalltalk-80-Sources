setNumerator: n denominator: d
	d = 0
		ifTrue: [self error: 'denominator cannot be zero']
		ifFalse:
			[numerator _ n truncated.
			denominator _ d truncated abs. "keep sign in numerator"
			d < 0 ifTrue: [numerator _ numerator negated]]
