declare: varString
	"Declare class variables common to all instances.  Answer whether
	recompilation is advisable."

	| newVars conflicts assoc class |
	newVars _
		(Scanner new scanFieldNames: varString)
			collect: [:x | x asSymbol].
	newVars do:
		[:var | var first isLowercase
			ifTrue: [self error: var, ' class variable name should be capitalized; proceed to include anyway.']].
	conflicts _ false.
	classPool == nil
		ifFalse: [(classPool keys reject: [:x | newVars includes: x]) do:
					[:var | self removeClassVarName: var]].
	(newVars reject: [:var | self classPool includesKey: var])
		do: [:var | "adding"
			"check if new vars defined elsewhere"
			(self scopeHas: var ifTrue: [:ignored | ignored])
				ifTrue:
					[self error: var , ' is defined elsewhere'.
					conflicts _ true]].
	newVars size > 0
		ifTrue:
			[classPool _ self classPool.
			"in case it was nil"
			newVars do: [:var | classPool declare: var from: Undeclared]].
	^conflicts
