string
	"Answer the receiver's string if remote files are enabled."

	| theFile |
	(SourceFiles == nil or: [sourceFileNumber == nil])
		ifTrue: [^'']
		ifFalse:
			[theFile _ SourceFiles at: sourceFileNumber.
			theFile position: (filePositionHi bitShift: 8) + filePositionLo.
			^theFile nextChunk]
