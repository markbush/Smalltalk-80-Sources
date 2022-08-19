allVarNamesSelect: selectBlock
	"Answer a collection of all the static variable names defined for the receiver which satisfy the condition in selectBlock.  Test class and pool variables, including superclass variables.  Also include global variables."

	| set |
	set _ self classPool keys select: selectBlock.
	self sharedPools do: [:pool | set addAll: (pool keys select: selectBlock)].
	superclass == nil
		ifTrue:	[set addAll: (Smalltalk keys select: selectBlock)]
		ifFalse: [set addAll: (superclass allVarNamesSelect: selectBlock)].
	^set
