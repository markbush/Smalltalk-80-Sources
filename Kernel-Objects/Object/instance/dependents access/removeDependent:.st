removeDependent: anObject
	"Remove the argument, anObject, as one of the receiver's dependents."
	| dependents |
	dependents _ DependentsFields at: self ifAbsent: [^ anObject].
	dependents remove: anObject ifAbsent: [].
	dependents isEmpty ifTrue: [self breakDependents].
	^anObject
