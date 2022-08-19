with: aCollection
	"Answer a new instance of me streaming on aCollection.  Assume that the
	collection is already full so the position and the limits are set to the end."

	^self basicNew with: aCollection
