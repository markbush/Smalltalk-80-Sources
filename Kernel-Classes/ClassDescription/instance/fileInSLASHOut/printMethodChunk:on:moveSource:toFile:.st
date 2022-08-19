printMethodChunk: aSelector on: aFileStream moveSource: moveSource toFile: fileIndex
	"Print the source code for the method associated with the argument
	selector onto
	the fileStream. aFileStream, and, for backup, if the argument
	moveSource (a Boolean)
	is true, also set the file index within the method to be the argument
	fileIndex. "

	| position |
	aFileStream cr.
	Cursor write showWhile:
		[moveSource
			ifTrue:
				[position _ aFileStream position.
				aFileStream nextChunkPut: (self sourceCodeAt: aSelector).
				(self compiledMethodAt: aSelector)
					setSourcePosition: position inFile: fileIndex]
			ifFalse: [aFileStream cr; nextChunkPut: (self sourceCodeAt: aSelector)]]
