format: nInstVars variable: isVar words: isWords pointers: isPointers
	"Set the format for the receiver (a Class)."

	format _ nInstVars +
				(isVar
						ifTrue: [4096]
						ifFalse: [0]) +
				(isWords
						ifTrue: [8192]
						ifFalse: [0]) +
				(isPointers
						ifTrue: [-16384]
						ifFalse: [0])
