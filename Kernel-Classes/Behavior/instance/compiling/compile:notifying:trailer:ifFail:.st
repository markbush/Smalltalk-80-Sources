compile: code notifying: requestor trailer: bytes ifFail: failBlock
	"Compile the argument, code, as source code in the context of the receiver and
	install the result in the receiver's method dictionary.  The argument requestor is to
	be notified if an error occurs. The argument code is either a string or an
	object that converts to a string or a PositionableStream on an object that
	converts to a string.  The trailer is an array of three bytes that should
	be added to the end of the compiled method.  These point to the location
	of the source code (on a file).   This method does not save the source code.
	Evaluate the failBlock if the compilation does not succeed."

	| methodNode selector |
	methodNode _ self compilerClass new
				compile: code
				in: self
				notifying: requestor
				ifFail: failBlock.
	selector _ methodNode selector.
	self addSelector: selector withMethod: (methodNode generate: bytes).
	^selector
