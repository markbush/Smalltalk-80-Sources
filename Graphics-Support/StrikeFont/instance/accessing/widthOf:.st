widthOf: aCharacter
	"Answer the width of the argument as a character in the receiver."

	| ascii |
	ascii _ (aCharacter asciiValue min: maxAscii + 1) max: minAscii.
	^(xTable at: ascii + 2) - (xTable at: ascii + 1)
