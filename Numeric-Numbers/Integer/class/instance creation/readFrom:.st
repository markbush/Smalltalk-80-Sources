readFrom: aStream
	"Answer a new Integer as described on the stream, aStream."

	^self readFrom: aStream radix: 10
