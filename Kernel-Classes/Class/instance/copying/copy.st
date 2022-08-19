copy
	| newClass |
	newClass _ self class copy new
		superclass: superclass
		methodDict: methodDict copy
		format: format
		name: name
		organization: organization copy
		instVarNames: instanceVariables copy
		classPool: classPool copy
		sharedPools: sharedPools.
	Class instSize to: self class instSize do:
		[:offset | newClass instVarAt: offset put: (self instVarAt: offset)].
	^newClass
