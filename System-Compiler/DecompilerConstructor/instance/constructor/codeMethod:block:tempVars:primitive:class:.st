codeMethod: selector block: block tempVars: vars primitive: primitive class: class
	| node precedence |
	node _ self codeSelector: selector code: nil.
	precedence _ selector isInfix
				ifTrue: [2]
				ifFalse: [selector isKeyword ifTrue: [3] ifFalse: [1]].
	tempVars _ vars.
	^MethodNode new
		selector: node
		arguments: (tempVars copyFrom: 1 to: nArgs)
		precedence: precedence
		temporaries: (tempVars copyFrom: nArgs + 1 to: tempVars size)
		block: block
		encoder: (Encoder new initScopeAndLiteralTables
					nTemps: tempVars size
					literals: literalValues
					class: class)
		primitive: primitive
