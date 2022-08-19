scanFor: scanBlock
	"Answer the index of the first bytecode for which scanBlock answer
	true when supplied with that bytecode."

	| method end byte type |
	method _ self method.
	end _ method endPC.
	[pc <= end]
		whileTrue:
			[(scanBlock value: (byte _ method at: pc)) ifTrue: [^true].
			type _ byte // 16.
			pc _
				type = 8
					ifTrue: ["extensions"
							pc + (#(2 2 2 2 3 2 3 1 1 1 ) at: byte \\ 16 + 1)]
					ifFalse: [type = 10
								ifTrue: [pc + 2"long jumps"]
								ifFalse: [pc + 1]]].
	^false
