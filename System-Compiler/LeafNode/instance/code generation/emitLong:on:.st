emitLong: mode on: aStream
	"emit extended variable access"

	| type index |
	code < 256
		ifTrue: [code < 16
				ifTrue:
					[type _ 0.
					index _ code]
				ifFalse:
					[code < 32
						ifTrue:
							[type _ 1.
							index _ code - 16]
						ifFalse:
							[code < 96
								ifTrue:
									[type _ code // 32 + 1.
									index _ code \\ 32]
								ifFalse: [self error:
										'Sends should be handled in SelectorNode']]]]
		ifFalse:
			[index _ code \\ 256.
			type _ code // 256 - 1].
	aStream nextPut: mode.
	aStream nextPut: type * 64 + index
