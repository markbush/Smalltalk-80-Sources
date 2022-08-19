initialPC
	"Answer the program counter for the receiver's first bytecode."

	^self numLiterals * BytesPerLiteral + BytesForHeader + 1
