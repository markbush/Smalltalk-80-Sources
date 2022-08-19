fileOutOn: aStream
	"Default, subclasses may do something different"
	aStream nextChunkPut: self text; cr; cr
