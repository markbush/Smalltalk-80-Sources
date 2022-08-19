addSelectorTo: set
	"If this instruction is a send, add its selector to set."

	| byte literalNumber |
	byte _ self method at: pc.
	byte < 128 ifTrue: [^self].
	byte >= 176
		ifTrue:
			["special byte or short send"
			byte >= 208
				ifTrue: [set add: (self method literalAt: (byte bitAnd: 15) + 1)]
				ifFalse: [set add: (Smalltalk specialSelectorAt: byte - 176 + 1)]]
		ifFalse:
			[(byte between: 131 and: 134)
				ifTrue:
					[literalNumber _ byte odd
								ifTrue: [(self method at: pc + 1) \\ 32]
								ifFalse: [self method at: pc + 2].
					set add: (self method literalAt: literalNumber + 1)]]
