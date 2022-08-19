with: aCollection from: firstIndex to: lastIndex
	"Answer a new instance of me streaming on the subcollection of aCollection, starting
	at index firstIndex and ending at lastIndex.  Assume that the
	resulting collection is already full so the position and the limits are set to the end."

	^self basicNew with: (aCollection copyFrom: firstIndex to: lastIndex)
