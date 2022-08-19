on: method
	"Answer a new InstructionStream on the argument, method."

	^self new method: method pc: method initialPC
