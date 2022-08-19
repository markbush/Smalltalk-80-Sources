codeTemp: index
	^VariableNode new
		name: 't' , (index + 1) printString
		index: index
		type: LdTempType
