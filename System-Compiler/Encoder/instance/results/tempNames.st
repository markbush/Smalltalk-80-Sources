tempNames
	| tempNodes |
	tempNodes _ (scopeTable values select: [:node | node isTemp])
		asSortedCollection: [:n1 :n2 | n1 code <= n2 code].
	^tempNodes collect: [:node | node key]
