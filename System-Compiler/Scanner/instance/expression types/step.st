step
	| c |
	c _ hereChar.
	hereChar _ aheadChar.
	(aheadChar _ source next) == nil
		ifTrue: [aheadChar _ EndChar "doit"].
	^c
