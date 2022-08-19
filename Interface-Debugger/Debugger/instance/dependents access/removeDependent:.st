removeDependent: aDependent
	super removeDependent: aDependent.
	self dependents isEmpty ifTrue: [self release]
