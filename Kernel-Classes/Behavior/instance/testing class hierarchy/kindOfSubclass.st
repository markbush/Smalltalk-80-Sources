kindOfSubclass
	"Answer a string which is the keyword that describes the receiver's kind of
	subclass, either a regular subclass, a variableSubclass, a variableByteSubclass, or
	a variableWordSubclass."

	self isVariable
		ifTrue: [self isBits
					ifTrue: [self isBytes
								ifTrue: [^' variableByteSubclass: ']
								ifFalse: [^' variableWordSubclass: ']]
					ifFalse: [^' variableSubclass: ']]
		ifFalse: [^' subclass: ']
