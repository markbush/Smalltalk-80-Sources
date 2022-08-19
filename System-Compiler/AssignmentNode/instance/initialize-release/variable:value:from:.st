variable: aVariable value: expression from: encoder
	"compile"

	(aVariable isMemberOf: MessageNode)
		ifTrue: [^aVariable store: expression from: encoder].
	variable _ aVariable.
	value _ expression
