classNamed: className
	"className is either a class name or a class name followed by ' class'.  Answer the class or metaclass it names."

	| meta name class |
	(className size > 6
		and: [(className copyFrom: className size - 5 to: className size) = ' class'])
		ifTrue:
			[meta _ true.
			name _ className copyFrom: 1 to: className size - 6]
		ifFalse:
			[meta _ false.
			name _ className].
	class _ Smalltalk at: name asSymbol.
	meta
		ifTrue: [^class class]
		ifFalse: [^class]
