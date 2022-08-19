digitAdd: arg
	| len arglen i accum sum |
	accum _ 0.
	(len _ self digitLength) < (arglen _ arg digitLength) ifTrue: [len _ arglen].
	"Open code max: for speed"
	sum _ Integer new: len neg: self negative.
	i _ 1.
	[i <= len]
		whileTrue:
			[accum _ (accum bitShift: -8) + (self digitAt: i) + (arg digitAt: i).
			sum digitAt: i put: (accum bitAnd: 255).
			i _ i + 1].
	accum > 255
		ifTrue:
			[sum _ sum growby: 1.
			sum lastDigitGet: (accum bitShift: -8)].
	^sum
