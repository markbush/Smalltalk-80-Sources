primaryExpression
	hereType == #word
		ifTrue:
			[parseNode _ encoder encodeVariable: self advance.
			^true].
	hereType == #leftBracket
		ifTrue:
			[self advance.
			self blockExpression.
			^true].
	hereType == #leftParenthesis
		ifTrue:
			[self advance.
			self expression ifFalse: [^self expected: 'expression'].
			(self match: #rightParenthesis)
				ifFalse: [^self expected: 'right parenthesis'].
			^true].
	(hereType == #string or: [hereType == #number or: [hereType == #literal]])
		ifTrue:
			[parseNode _ encoder encodeLiteral: self advance.
			^true].
	(here == #- and: [tokenType == #number])
		ifTrue:
			[self advance.
			parseNode _ encoder encodeLiteral: self advance negated.
			^true].
	^false
