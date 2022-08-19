digitRshift: anInteger bytes: b lookfirst: a
	 "shift right 8*b+anInteger bits, 0<=n<8.  Discard all digits beyond a,
	and all zeroes at or below a."

	| n x i r f m digit count|
	n _ 0 - anInteger.
	x _ 0.
	f _ n + 8.
	i _ a.
	m _ 255 bitShift: 0 - f.
	digit _ self digitAt: i.
	[((digit bitShift: n) bitOr: x) = 0 and: [i ~= 1]] whileTrue:
		[x _ digit bitShift: f "Can't exceed 8 bits".
		i _ i - 1.
		digit _ self digitAt: i].
	i <= b ifTrue: [^Integer new: 0 neg: self negative].  "All bits lost"
	r _ Integer new: i - b neg: self negative.
	count _ i.
	x _ (self digitAt: b + 1) bitShift: n.
	b + 1 to: count do:
		[:i | digit _ self digitAt: i + 1.
		r digitAt: i - b put: (((digit bitAnd: m) bitShift: f) bitOr: x)
			"Avoid values > 8 bits".
		x _ digit bitShift: n].
	^r
