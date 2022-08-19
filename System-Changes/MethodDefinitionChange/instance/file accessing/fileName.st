fileName
	file isNil
		ifTrue: [^'current system']
		ifFalse: [^super fileName]
