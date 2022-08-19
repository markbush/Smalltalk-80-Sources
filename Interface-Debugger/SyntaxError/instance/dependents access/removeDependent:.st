removeDependent: aDependent
	super removeDependent: aDependent.
	self dependents isEmpty "detect when closing"
		ifTrue: [processHandle release]
