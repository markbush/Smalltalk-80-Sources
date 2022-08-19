primitive
	"Answer the primitive index associated with the receiver.  Zero indicates
	that there is either no primitive or just a quick primitive."

	self flags < 7
		ifTrue: [^0]
		ifFalse: [^(self literalAt: self numLiterals - 1) bitAnd: 255	]
