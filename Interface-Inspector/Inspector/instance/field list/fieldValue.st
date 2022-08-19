fieldValue

	field = 'self' ifTrue: [^object].
	field first isDigit
		ifTrue: [^object basicAt: self fieldIndex]
		ifFalse: [^object instVarAt: self fieldIndex]
