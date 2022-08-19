lookupInPools: name ifFound: assocBlock
	| sym |
	Symbol
		hasInterned: name
		ifTrue: [:sym | ^class scopeHas: sym ifTrue: assocBlock].
	^false
