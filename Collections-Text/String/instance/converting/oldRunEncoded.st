oldRunEncoded
	"Returns a string with equal consecutive bytes encoded as
		<0> <count> <val>
	Single zeroes are encoded as <0> <0> "

	| stream count previousByte byte |
	stream _ WriteStream on: (String new: self size).
	count _ 0.
	previousByte _ self at: 1.
	2 to: self size do:
		[:i | byte _ self at: i.
		(byte = previousByte and: [count < 255])
			ifTrue: [count _ count + 1]
			ifFalse:
				[count > 0
					ifTrue:
						[stream nextPut: (Character value: 0);
							nextPut: (Character value: count+1);
							nextPut: previousByte.
						count _ 0]
					ifFalse:
						[stream nextPut: previousByte.
						previousByte asInteger = 0
							ifTrue: [stream nextPut: previousByte]].
				previousByte _ byte]].
	count > 0
		ifTrue:
			[stream nextPut: (Character value: 0);
				nextPut: (Character value: count+1);
				nextPut: previousByte]
		ifFalse:
			[stream nextPut: previousByte.
			previousByte asInteger = 0 ifTrue: [stream nextPut: previousByte]].
	^stream contents
