blockExpression
	"  [ {:var} ( | statements) ] => BlockNode"

	| argNodes |
	argNodes _ OrderedCollection new.
	[self match: #colon
	"gather any arguments"]
		whileTrue:
			[argNodes addLast: (encoder autoBind: self argumentName)].
	(argNodes size > 0 & (hereType ~~ #rightBracket) and: [(self match: #verticalBar) not])
		ifTrue: [^self expected: 'Vertical bar'].
	self statements: argNodes innerBlock: true.
	(self match: #rightBracket)
		ifFalse: [^self expected: 'Period or right bracket']
