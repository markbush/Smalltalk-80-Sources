fileOutCategory: aString on: aFileStream moveSource: moveSource toFile: fileIndex
	"File a description of the receiver's category, aString, onto aFileStream.  If
	the boolean argument, moveSource, is true, then set the trailing bytes to the position
	of aFileStream and to fileIndex in order to indicate where to find the source code."

	self printCategoryChunk: aString on: aFileStream.
	(self organization listAtCategoryNamed: aString)
		do: [:sel | self
				printMethodChunk: sel
				on: aFileStream
				moveSource: moveSource
				toFile: fileIndex].
	aFileStream nextChunkPut: ' '
