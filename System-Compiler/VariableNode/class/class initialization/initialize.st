initialize
	"VariableNode initialize. Decompiler initialize."
	| encoder |
	encoder _ Encoder new.
	StdVariables _ Dictionary new: 16.
	encoder
		fillDict: StdVariables
		with: VariableNode
		mapping: #('self' 'thisContext' 'super' 'nil' 'false' 'true' )
		to: (Array with: LdSelf with: LdThisContext with: LdSuper)
				, (Array with: LdNil with: LdFalse with: LdTrue).
	StdSelectors _ Dictionary new: 64.
	encoder
		fillDict: StdSelectors
		with: SelectorNode
		mapping: ((1 to: Smalltalk specialSelectorSize) collect:
							[:i | Smalltalk specialSelectorAt: i])
		to: (SendPlus to: SendPlus + 31).
	StdLiterals _ LiteralDictionary new: 16.
	encoder
		fillDict: StdLiterals
		with: LiteralNode
		mapping: #(-1 0 1 2 )
		to: (LdMinus1 to: LdMinus1 + 3).
	encoder initScopeAndLiteralTables.
	self initialize2: encoder
