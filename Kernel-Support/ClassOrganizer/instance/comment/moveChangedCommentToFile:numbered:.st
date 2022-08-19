moveChangedCommentToFile: aFileStream numbered: sourceIndex
	"This is part of source code compression.  Move the comment about the
	class classified by the receiver from the file referenced by
	sourceIndex and to the stream, aFileStream."

	(globalComment ~~ nil and: [globalComment sourceFileNumber > 1])
		ifTrue:
			[aFileStream cr; cr.
			globalComment _
				RemoteString
					newString: globalComment string
					onFileNumber: sourceIndex
					toFile: aFileStream]
