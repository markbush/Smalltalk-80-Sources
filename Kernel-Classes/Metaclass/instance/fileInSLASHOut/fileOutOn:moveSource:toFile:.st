fileOutOn: aFileStream moveSource: moveSource toFile: fileIndex
	"File me out on aFileStream."

	super
		fileOutOn: aFileStream
		moveSource: moveSource
		toFile: fileIndex.
	(methodDict includesKey: #initialize)
		ifTrue:
			[aFileStream cr.
			aFileStream cr.
			aFileStream nextChunkPut: thisClass name , ' initialize'.
			aFileStream cr]
