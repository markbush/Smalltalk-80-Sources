jump: distance if: condition
	"Simulates the action of a 'conditional jump' bytecode whose
	offset is the argument, distance, and whose condition is the
	argument, condition."

	(self pop eqv: condition) ifTrue: [self jump: distance]
