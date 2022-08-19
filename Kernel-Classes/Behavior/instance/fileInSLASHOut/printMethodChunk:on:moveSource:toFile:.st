printMethodChunk: selector on: aFileStream moveSource: moveSource toFile: fileIndex
	"Print the source code for the method associated with the argument selector onto
	the fileStream. aFileStream, and, for backup, if the argument moveSource (a Boolean)
	is true, also set the file index within the method to be the argument fileIndex."

	| position |
	aFileStream cr; cr.
	moveSource ifTrue: [position _ aFileStream position].
	aFileStream nextChunkPut: (self sourceMethodAt: selector) asString.
	moveSource
		ifTrue: [(self compiledMethodAt: selector)
					setSourcePosition: position inFile: fileIndex]
