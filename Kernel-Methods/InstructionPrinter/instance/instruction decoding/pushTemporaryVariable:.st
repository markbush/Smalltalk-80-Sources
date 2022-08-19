pushTemporaryVariable: offset
	"Print the Push the Contents of the Temporary Variable whose Index is the
	argument, offset, on the Top of the Stack bytecode."
	self print: 'pushTemp: ' , offset printString
