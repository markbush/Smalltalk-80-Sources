declareClassVar: name
	| sym |
	name first isUppercase ifFalse: [self notify: 'Capitalize globals or classVars'].
	sym _ name asSymbol.
	class addClassVarName: sym.
	Smalltalk changes changeClass: class.
	^ self global: (class classPool associationAt: sym) name: sym
