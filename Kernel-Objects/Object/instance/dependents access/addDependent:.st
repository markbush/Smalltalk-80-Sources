addDependent: anObject
	"Add anObject as one of the receiver's dependents."
	(DependentsFields at: self ifAbsent: [self setDependents])
		add: anObject.
	^anObject
