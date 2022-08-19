methodReturnReceiver
	"Simulates the action of a 'return receiver' bytecode.  This
	corresponds to the source expression '^self'."

	^self return: self receiver to: self home sender
