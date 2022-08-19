codeInst: index
	^VariableNode new
		name: (instVars at: index + 1)
		index: index
		type: LdInstType
