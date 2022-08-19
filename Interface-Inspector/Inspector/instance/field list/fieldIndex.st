fieldIndex
	"Answer the offset corresponding to the currently selected field."

	field first isDigit
		ifTrue: [^ Integer readFromString: field]
		ifFalse: [^ object class allInstVarNames indexOf: field]
