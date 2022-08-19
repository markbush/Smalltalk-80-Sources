fileOutMessage: aString on: aFileStream moveSource: moveSource toFile: fileIndex
	"File a description of the receiver's message, aString, onto aFileStream.  If
	the boolean argument, moveSource, is true, then set the trailing bytes to the position
	of aFileStream and to fileIndex in order to indicate where to find the source code."

	| cat |
	cat _ self organization categoryOfElement: aString.
	cat == nil ifTrue: [^self error: 'no such message'].
	self printCategoryChunk: cat on: aFileStream.
	self
		printMethodChunk: aString
		on: aFileStream
		moveSource: moveSource
		toFile: fileIndex.
	aFileStream nextChunkPut: ' '
