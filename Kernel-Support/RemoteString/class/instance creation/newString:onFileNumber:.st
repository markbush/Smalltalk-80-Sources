newString: aString onFileNumber: sourceIndex
	"Answer a new instance of RemoteString for string, aString, on file indexed by
	sourceIndex.  Puts the string on the file and creates the remote reference."

	^self new string: aString onFileNumber: sourceIndex
