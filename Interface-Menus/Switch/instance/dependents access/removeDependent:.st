removeDependent: aDependent
	"If aDependent is the only dependent in the list, the receiver sends
	Switch|release to try to break up possible pointer cycles."

	super removeDependent: aDependent.
	self dependents isEmpty ifTrue: [self release]
