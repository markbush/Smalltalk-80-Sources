activateMethod: newMethod withArgs: args receiver: rcvr class: class
	"Answer a new context initialized with the arguments."

	^MethodContext
		sender: self
		receiver: rcvr
		method: newMethod
		arguments: args
