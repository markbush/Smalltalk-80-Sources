allClassVarNames
	"Answer a Set of the names of the receiver's class variables, including those
	defined in the superclasses of the receiver."
	| aSet |
	superclass == nil
		ifTrue:
			[^self classVarNames]  "This is the keys so it is a new Set."
		ifFalse:
			[aSet _ superclass allClassVarNames.
			aSet addAll: self classVarNames.
			^aSet]
