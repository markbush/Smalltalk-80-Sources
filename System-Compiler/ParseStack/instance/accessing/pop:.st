pop: n
	(position _ position - n) < 0
		ifTrue: [self error: 'Parse stack underflow']
