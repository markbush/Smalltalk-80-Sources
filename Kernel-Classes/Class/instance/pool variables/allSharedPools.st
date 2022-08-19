allSharedPools
	"Answer a Set of the pools the receiver shares, including those defined
	in the superclasses of the receiver."

	| aSet |
	superclass == nil
		ifTrue:
			[^self sharedPools copy]
		ifFalse:
			[aSet _ superclass allSharedPools.
			aSet addAll: self sharedPools.
			^aSet]
