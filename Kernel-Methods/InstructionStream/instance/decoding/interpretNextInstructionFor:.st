interpretNextInstructionFor: client
	"Send to the argument, client, a message that specifies the type of the
	the next instruction."

	| byte type offset method |
	method_ self method.
	byte_ method at: pc.
	type_ byte // 16.
	offset_ byte \\ 16.
	pc_ pc+1.
	type=0 ifTrue: [^client pushReceiverVariable: offset].
	type=1 ifTrue: [^client pushTemporaryVariable: offset].
	type=2 ifTrue: [^client pushConstant: (method literalAt: offset+1)].
	type=3 ifTrue: [^client pushConstant: (method literalAt: offset+17)].
	type=4 ifTrue: [^client pushLiteralVariable: (method literalAt: offset+1)].
	type=5 ifTrue: [^client pushLiteralVariable: (method literalAt: offset+17)].
	type=6
		ifTrue: [offset<8
					ifTrue: [^client popIntoReceiverVariable: offset]
					ifFalse: [^client popIntoTemporaryVariable: offset-8]].
	type=7
		ifTrue: [offset=0 ifTrue: [^client pushReceiver].
				offset<8 ifTrue: [^client pushConstant: (SpecialConstants at: offset)].
				offset=8 ifTrue: [^client methodReturnReceiver].
				offset<12 ifTrue: [^client methodReturnConstant:
												(SpecialConstants at: offset-8)].
				offset=12 ifTrue: [^client methodReturnTop].
				offset=13 ifTrue: [^client blockReturnTop].
				offset>13 ifTrue: [^self error: 'unusedBytecode']].
	type=8 ifTrue: [^self interpretExtension: offset in: method for: client].
	type=9
		ifTrue:  "short jumps"
			[offset<8 ifTrue: [^client jump: offset+1].
			^client jump: offset-8+1 if: false].
	type=10
		ifTrue:  "long jumps"
			[byte_ method at: pc.  pc_ pc+1.
			offset<8 ifTrue: [^client jump: offset-4*256 + byte].
			^client jump: (offset bitAnd: 3)*256 + byte if: offset<12].
	type=11
		ifTrue:
			[^client
				send: (Smalltalk specialSelectorAt: offset+1)
				super: false
				numArgs: (Smalltalk specialNargsAt: offset+1)].
	type=12
		ifTrue:
			[^client
				send: (Smalltalk specialSelectorAt: offset+17)
				super: false
				numArgs: (Smalltalk specialNargsAt: offset+17)].
	type>12
		ifTrue:
			[^client send: (method literalAt: offset+1)
					super: false
					numArgs: type-13]
