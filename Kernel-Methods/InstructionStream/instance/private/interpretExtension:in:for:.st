interpretExtension: offset in: method for: client
	| numberArguments literalNumber type offset2 |
	"pc has already been incremented by 1"
	offset < 3
		ifTrue:
			["extended pushes and pops"
			type _ (method at: pc) // 64.
			offset2 _ (method at: pc) \\ 64.
			pc _ pc + 1.
			offset = 0
				ifTrue:
					[type = 0 ifTrue: [^client pushReceiverVariable: offset2].
					type = 1 ifTrue: [^client pushTemporaryVariable: offset2].
					type = 2
						ifTrue: [^client pushConstant: (method literalAt: offset2 + 1)].
					type = 3
						ifTrue: [^client pushLiteralVariable:
									(method literalAt: offset2 + 1)]].
			offset = 1
				ifTrue:
					[type = 0 ifTrue: [^client storeIntoReceiverVariable: offset2].
					type = 1 ifTrue: [^client storeIntoTemporaryVariable: offset2].
					type = 2 ifTrue: [self error: 'illegalStore'].
					type = 3
						ifTrue: [^client storeIntoLiteralVariable:
									(method literalAt: offset2 + 1)]].
			offset = 2
				ifTrue:
					[type = 0 ifTrue: [^client popIntoReceiverVariable: offset2].
					type = 1 ifTrue: [^client popIntoTemporaryVariable: offset2].
					type = 2 ifTrue: [self error: 'illegalStore'].
					type = 3
						ifTrue: [^client popIntoLiteralVariable:
									(method literalAt: offset2 + 1)]]].
	offset < 7
		ifTrue:
			["extended sends"
			offset odd
				ifTrue:
					[numberArguments _ (method at: pc) // 32.
					literalNumber _ (method at: pc) \\ 32.
					pc _ pc + 1]
				ifFalse:
					[numberArguments _ method at: pc.
					literalNumber _ method at: pc + 1.
					pc _ pc + 2].
			^client
				send: (method literalAt: literalNumber + 1)
				super: offset > 4
				numArgs: numberArguments].
	offset = 7 ifTrue: [^client doPop].
	offset = 8 ifTrue: [^client doDup].
	offset = 9 ifTrue: [^client pushActiveContext].
	self error: 'unusedBytecode'
