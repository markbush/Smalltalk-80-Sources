print: instruction
	"Append to the receiver a description of the bytecode, instruction."

	| code |
	stream print: oldPC; space.
	stream nextPut: $<.
	oldPC to: pc - 1 do:
		[:i |
		code _ (self method at: i) storeStringRadix: 16.
		stream nextPut:
			(code size < 5
				ifTrue: [$0]
				ifFalse: [code at: 4]).
		stream nextPut: code last; space].
	stream skip: -1.
	stream nextPut: $>.
	stream space.
	stream nextPutAll: instruction.
	stream cr.
	oldPC _ pc
	"(InstructionPrinter compiledMethodAt: #print:) symbolic."
