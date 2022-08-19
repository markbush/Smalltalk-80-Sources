compile: code notifying: requestor trailer: bytes ifFail: failBlock
	"Intercept this message in order to remember system changes."

	| methodNode selector |
	Cursor execute showWhile:
		[methodNode _
			 	self compilerClass new
					compile: code
					in: self
					notifying: requestor
					ifFail: failBlock.
	selector _ methodNode selector.
	(methodDict includesKey: selector)
		ifTrue: [Smalltalk changes changeSelector: selector class: self]
		ifFalse: [Smalltalk changes addSelector: selector class: self].
	self addSelector: selector withMethod: (methodNode generate: bytes)].
	^selector
