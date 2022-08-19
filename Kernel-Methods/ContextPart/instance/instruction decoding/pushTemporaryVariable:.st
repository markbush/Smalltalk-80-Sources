pushTemporaryVariable: offset
	"Simulates the action of bytecode that pushes the contents
	of the temporary variable whose index is the argument, index,
	on the top of the stack."

	self push: (self home at: offset + 1)
