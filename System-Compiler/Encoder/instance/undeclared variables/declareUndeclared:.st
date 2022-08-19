declareUndeclared: name
	| sym |
	sym _ name asSymbol.
	(Undeclared includesKey: name asSymbol) ifFalse:
		[Transcript show: ' (' , name , ' is Undeclared) '.
		Undeclared at: sym put: nil].
	^ self global: (Undeclared associationAt: sym) name: sym
