compileUnchecked: code
	"Compile the argument, code, and install the result in the receiver's method dictionary.
	Do not check for possible effect on inheritance, since that's what this is doing."
	| selector methodNode |
	methodNode _ self compilerClass new
				compile: code
				in: self
				notifying: nil
				ifFail: [^nil].
	selector _ methodNode selector.
	self addSelectorUnchecked: selector withMethod: (methodNode generate: #(0 0 0)).
	^selector
