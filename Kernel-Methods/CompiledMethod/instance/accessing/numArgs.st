numArgs
	"Answer the number of arguments the receiver takes."

	| flags |
	(flags _ self flags) <= 4 ifTrue: [^flags].
	flags < 7 ifTrue: [^0].
	^((self literalAt: self numLiterals - 1)
		bitShift: -8)
		bitAnd: 31
