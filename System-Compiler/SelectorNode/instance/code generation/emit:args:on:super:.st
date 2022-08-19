emit: stack args: nArgs on: aStream super: supered
	| index |
	stack pop: nArgs.
	(supered not and: [code - Send < SendLimit and: [nArgs < 3]])
		ifTrue:
			["short send"
			aStream nextPut:
					(code < Send
						ifTrue: [code]
						ifFalse: ["special" nArgs * 16 + code])]
		ifFalse:
			[index _ code < 256 ifTrue: [code - Send] ifFalse: [code \\ 256].
			(index < 32 and: [nArgs <= 7])
				ifTrue:
					["medium send"
					aStream nextPut: SendLong + (supered ifTrue: [2] ifFalse: [0]).
					aStream nextPut: nArgs * 32 + index]
				ifFalse:
					["long send"
					aStream nextPut: SendLong + 1 + (supered ifTrue: [2] ifFalse: [0]).
					aStream nextPut: nArgs.
					aStream nextPut: index]]
