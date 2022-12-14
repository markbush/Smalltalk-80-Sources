send: selector super: supered numArgs: numberArguments
	"Print the Send a Message with Selector, selector, bytecode.  The argument,
	supered, indicates whether the receiver of the message is specified with
	'super' in the source method.  The arguments of the message
	are found in the top numArguments locations on the stack and
	the receiver just below them."
	self print: (supered ifTrue: ['superSend: '] ifFalse: ['send: ']) , selector
