isQuick
	^statements size = 1 and: [statements first isVariableReference]
