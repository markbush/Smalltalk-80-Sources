recompile: selector from: oldClass
	"Recompile the method associated with selector in the receiver's method dictionary.
	Take care not to write out any new source code - just generate new bytes.
	oldClass may differ from self in order to decompile right (if sourceFiles == nil)
	when adding or removing fields of a class."

	| method trailer methodNode |
	method _ oldClass compiledMethodAt: selector.
	trailer _ (method size - 2 to: method size) collect: [:i | method at: i].
	methodNode _ self compilerClass new
				compile: (oldClass sourceCodeAt: selector)
				in: self
				notifying: nil
				ifFail: [].
	methodNode == nil  "Try again after proceed from SyntaxError"
		ifTrue: [^self recompile: selector].
	selector == methodNode selector ifFalse: [self error: 'selector changed!'].
	self addSelector: selector withMethod: (methodNode generate: trailer).
