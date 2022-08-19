highBit
	| i bit |
	self < 0 ifTrue: [^self error: 'highBit is not defined for negative numbers'].
	self = 0 ifTrue: [^0].
	i _ 1.
	bit _ 1.
	[self > bit]
		whileTrue:
			[i _ i + 1.
			bit _ bit + bit + 1].
	^i
