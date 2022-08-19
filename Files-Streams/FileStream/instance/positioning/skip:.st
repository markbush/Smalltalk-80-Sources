skip: n
	| pos plen pageOffset |
	n = 0 ifTrue: [^self].
	self reopen.
	pos _ position + n.
	(n > 0
		ifTrue: [pos >= readLimit]
		ifFalse:
			[self fixEnd.
			"important on last page"
			pos < page dataBeginning])
		ifTrue:
			[plen _ page dataSize.
			"assume p is not Large, otherwise use divMod:"
			pos _ pos - page dataBeginning.
			pageOffset _ pos // plen.
			(self positionPage: page pageNumber + pageOffset character: pos \\ plen)
				ifFalse: [self error: 'cannot skip ' , n printString]]
		ifFalse: ["same page"
			position _ pos]
