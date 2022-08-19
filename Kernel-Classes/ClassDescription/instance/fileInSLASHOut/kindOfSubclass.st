kindOfSubclass
	"Answer a string that describes what kind of subclass the receiver is, i.e.,
	variable, variable byte, variable word, or not variable."

	self isVariable
		ifTrue: [self isBits
					ifTrue: [self isBytes
								ifTrue: [^' variableByteSubclass: ']
								ifFalse: [^' variableWordSubclass: ']]
					ifFalse: [^' variableSubclass: ']]
		ifFalse: [^' subclass: ']
