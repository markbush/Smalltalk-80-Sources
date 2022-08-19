declareGlobal: name
	| sym |
	name first isUppercase ifFalse: [self notify: 'Capitalize globals or classVars'].
	sym _ name asSymbol.
	Smalltalk at: sym put: nil.
	^ self global: (Smalltalk associationAt: sym) name: sym
