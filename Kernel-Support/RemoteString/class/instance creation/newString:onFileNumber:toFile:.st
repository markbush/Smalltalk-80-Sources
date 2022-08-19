newString: aString onFileNumber: sourceIndex toFile: aFileStream
	"Answer a new instance of RemoteString for string, aString, on file indexed by
	sourceIndex.  Puts the string on the file, aFileStream, and creates the remote
	reference.  Assumes that the index corresponds properly to aFileStream."

	^self new string: aString onFileNumber: sourceIndex toFile: aFileStream
