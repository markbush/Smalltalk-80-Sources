numLiterals
	"Answer the number of literals used by the receiver."

	self isQuick ifTrue: [^0].
	^self header bitAnd: 63
