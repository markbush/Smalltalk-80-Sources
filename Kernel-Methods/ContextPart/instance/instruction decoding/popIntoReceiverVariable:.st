popIntoReceiverVariable: offset
	"Simulates the action of bytecode that removes the top of the stack and
	stores it into an instance variable of my receiver."

	self receiver instVarAt: offset + 1 put: self pop
