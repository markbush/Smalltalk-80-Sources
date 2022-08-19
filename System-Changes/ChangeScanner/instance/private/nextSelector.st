nextSelector
	| selector |
	tokenType == #keyword
		ifTrue:
			[self scanLitWord].
	(tokenType == #word or: [tokenType == #keyword or: [tokenType == #binary]])
		ifTrue:
			[selector _ token.
			self scanToken].
	^selector
