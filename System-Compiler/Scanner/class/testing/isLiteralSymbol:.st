isLiteralSymbol: aSymbol
	"Test whether a symbol can be stored as # followed by its characters.
	Symbols created internally with asSymbol may not have this property,
	e.g. '3' asSymbol."

	| i ascii type |
	i _ aSymbol size.
	i = 0 ifTrue: [^false].
	ascii _ (aSymbol at: 1) asciiValue.
	"TypeTable should have been origined at 0 rather than 1 ..."
	ascii = 0 ifTrue: [^false].
	type _ TypeTable at: ascii.
	(type == #colon or: [type == #verticalBar])
		ifTrue: [^i = 1].
	type == #xBinary
		ifTrue:
			[[i > 1]
				whileTrue:
					[ascii _ (aSymbol at: i) asciiValue.
					ascii = 0 ifTrue: [^false].
					(TypeTable at: ascii) == #xBinary ifFalse: [^false].
					i _ i - 1].
			^true].
	type == #xLetter
		ifTrue:
			[[i > 1]
				whileTrue:
					[ascii _ (aSymbol at: i) asciiValue.
					ascii = 0 ifTrue: [^false].
					type _ TypeTable at: ascii.
					(type == #xLetter or: [type == #xDigit or: [type == #colon]])
						ifFalse: [^false].
					i _ i - 1].
			^true].
	^false
