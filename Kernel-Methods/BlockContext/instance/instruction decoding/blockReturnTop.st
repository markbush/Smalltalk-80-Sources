blockReturnTop
	"Simulate the interpreter's action when a ReturnTopOfStack
	bytecode is encountered in the receiver."

	| save dest |
	save _ home.	"Needed because return code will nil it"
	dest _ self return: self pop to: self sender.
	home _ save.
	sender _ nil.
	^dest
