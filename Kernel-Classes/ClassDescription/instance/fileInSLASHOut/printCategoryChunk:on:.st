printCategoryChunk: aString on: aFileStream
	"print category definition on aFileStream"

	aFileStream cr; cr; nextPut: $!.
	aFileStream nextChunkPut:
				self name , ' methodsFor: ' , '''' , aString , ''''
