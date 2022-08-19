on: aCollection from: firstIndex to: lastIndex
	"Answer a new instance of me, streaming over a copy of aCollection from
	firstIndex to lastIndex."

	^self basicNew on: (aCollection copyFrom: firstIndex to: lastIndex)
