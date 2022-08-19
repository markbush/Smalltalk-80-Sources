storeIntoTemporaryVariable: offset
	"Simulates the action of bytecode that stores the top of the stack
	into one of my temporary variables."

	self home at: offset + 1 put: self top
