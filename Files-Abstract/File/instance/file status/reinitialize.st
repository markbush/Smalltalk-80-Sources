reinitialize
	"Reset the receiver to its initial status."
	lastPageNumber _ nil.
	error _ ''.
	serialNumber _ ByteArray new: 4.
	"text mode is default"
	binary isNil ifTrue: [binary _ false]
