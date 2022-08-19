newTemp: name
	nTemps _ nTemps + 1.
	^VariableNode new
		name: name
		index: nTemps - 1
		type: LdTempType
