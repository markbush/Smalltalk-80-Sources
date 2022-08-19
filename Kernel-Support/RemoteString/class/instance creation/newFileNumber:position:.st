newFileNumber: sourceIndex position: anInteger
	"Answer a new instance of RemoteString for file indexed by sourceIndex,
	at the position anInteger.  Assumes that the string is already stored
	on the file and the instance will be used to access it."

	^self new fileNumber: sourceIndex position: anInteger
