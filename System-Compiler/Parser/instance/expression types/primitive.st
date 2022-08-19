primitive
	| n |
	(self matchToken: #<)
		ifFalse: [^0].
	(self matchToken: 'primitive:')
		ifFalse: [^self expected: 'primitive:'].
	n _ here.
	((self match: #number)
		and: [n isKindOf: Integer])
		ifFalse: [^self expected: 'Integer'].
	(self matchToken: #>)
		ifFalse: [^self expected: '>'].
	^n
