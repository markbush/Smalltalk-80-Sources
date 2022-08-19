whichSelectorsAccess: instVarName
	"Answer a set of selectors whose methods access the argument, instVarName,
	as a named instance variable."

	| instVarIndex |
	instVarIndex _ self allInstVarNames indexOf: instVarName ifAbsent: [^Set new].
	^methodDict keys select:
		[:sel |
		((methodDict at: sel)
			readsField: instVarIndex)
			or: [(methodDict at: sel) writesField: instVarIndex]]

	"Point whichSelectorsAccess: 'x'."
