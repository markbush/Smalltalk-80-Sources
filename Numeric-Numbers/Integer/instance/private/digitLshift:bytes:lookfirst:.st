digitLshift: n bytes: b lookfirst: a
	| x f m len r digit |
	"shift by 8*b+n bits, 0<=n<8.  a true means check for a leading zero byte in the
	result "
	x _ 0.
	f _ n - 8.
	m _ 255 bitShift: 0 - n.
	len _ self digitLength + 1 + b.
	(a and: [(self lastDigit bitShift: f) = 0])
		ifTrue: [len _ len - 1].
	r _ Integer new: len neg: self negative.
	1 to: b do: [:i | r digitAt: i put: 0].
	1 to: len - b do:
		[:i |
		digit _ self digitAt: i.
		r
			digitAt: i + b
			put: (((digit bitAnd: m) bitShift: n) bitOr: x).
		"Avoid values > 8 bits"
		x _ digit bitShift: f].
	^r
