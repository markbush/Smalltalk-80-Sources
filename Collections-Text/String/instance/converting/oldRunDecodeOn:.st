oldRunDecodeOn: decodedStream
	"Decodes strings encoded by the message oldRunEncoded.
	Output is written onto decodedStream"
	| index size byte count bitsValue |
	index _ 0. size _ self size.
	[index>=size] whileFalse:
		[byte _ (self at: (index _ index+1)).
		byte asInteger == 0
			ifTrue:
				[count _ (self at: (index _ index+1)) asInteger.
				count = 0
					ifTrue:  "<0> <0> means one zero byte"
						[decodedStream nextPut: byte]
					ifFalse:  "<0> <count> <bitsValue> means count bytes = bitsValue"
						[bitsValue _ (self at: (index _ index+1)).
						[(count _ count-1)>=0] whileTrue: [decodedStream nextPut: bitsValue]]]
			ifFalse:  "<nonZero> means one nonZero byte"
				[decodedStream nextPut: byte]].
	^ decodedStream contents
