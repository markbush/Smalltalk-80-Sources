fieldList
	"Answer an Array consisting of 'self' and the instance variable names of the inspected object.  Up to 40 indices are given for variable length objects."

	| max |
	max _ object basicSize.
	^(Array with: 'self'), object class allInstVarNames,
		((max <= 40
			ifTrue: [1 to: max]
			ifFalse: [(1 to: 30) , (max-10 to: max)])
		collect: [:i | i printString])
