runSimulated: aBlock
	"The simulator is a group of methods in class ContextPart which do what the
	Smalltalk interpreter does.  They execute Smalltalk bytecodes.  By adding code
	to the simulator, you could take statistics on the running of Smalltalk methods.
	See also trace: callStatistics: and instructionStatistics: for sample uses"

	^ thisContext sender
		runSimulated: aBlock
		contextAtEachStep: [:ignored]

	"ContextPart runSimulated: [Pen new defaultNib: 5; go: 100]"
