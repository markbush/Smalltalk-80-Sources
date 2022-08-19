fromString: str radix: radix
	| maxdigit c val |
	maxdigit _
		radix + (radix > 10
					ifTrue: [55 - 1]
					ifFalse: [48 - 1]).
	val _ 0.
	1 to: str size do:
		[:i |
		c _ str at: i.
		(c < 48 ifFalse: [c > maxdigit])
			ifTrue: [^false].
		val _ val * radix + (c <= 57
							ifTrue: [c - 48]
							ifFalse:
								[c < 65 ifTrue: [^false].
								c - 55])].
	^val
