instVarNames
	"Answer an Array of the names of instance variables defined in the receiver."

	instanceVariables == nil
		ifTrue: [^#()]
		ifFalse: [^instanceVariables]
