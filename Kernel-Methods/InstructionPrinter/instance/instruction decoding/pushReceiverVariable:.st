pushReceiverVariable: offset
	"Print the Push the Contents of the Receiver's Instance Variable whose Index
	is the argument, offset, on the Top of the Stack bytecode."
	self print: 'pushRcvr: ' , offset printString
