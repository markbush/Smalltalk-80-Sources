jump: offset if: condition
	"Print the Conditional Jump bytecode."
	self print:
		(condition
			ifTrue: ['jumpTrue: ']
			ifFalse: ['jumpFalse: '])
			, (pc + offset) printString
