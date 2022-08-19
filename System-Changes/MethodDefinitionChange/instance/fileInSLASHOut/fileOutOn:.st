fileOutOn: aStream
	self fileOutHeaderOn: aStream.
	aStream nextChunkPut: self text;
		space; nextPut: $!; cr; cr
