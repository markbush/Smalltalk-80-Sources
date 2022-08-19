logProtocolChange: aString
	"Add aString, which is an executable account of the last protocol change (rename,
	remove, selector move) to the changes file."
	| file |
	SourceFiles == nil
		ifFalse:
			[file _ SourceFiles at: 2.
			file setToEnd; readWriteShorten.
			file cr; nextChunkPut: aString.
			file cr; readOnly].
