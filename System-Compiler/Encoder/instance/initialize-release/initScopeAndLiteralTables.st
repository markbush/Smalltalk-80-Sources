initScopeAndLiteralTables
	scopeTable _ StdVariables copy.
	litSet _ StdLiterals copy.
	selectorSet _ StdSelectors copy.
	litIndSet _ Dictionary new: 16.
	literalStream _ WriteStream on: (Array new: 32)
