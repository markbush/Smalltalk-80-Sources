putCommentOnFile: aFileStream numbered: sourceIndex moveSource: moveSource
	"Store the comment about the class onto file, aFileStream."

	| newRemoteString saveEmphasis |
	saveEmphasis _ aFileStream emphasis.
	aFileStream emphasis: 3.		"meant to be 10 point italic font"
	globalComment ~~ nil
		ifTrue:
			[aFileStream cr.
			newRemoteString _
				RemoteString
						newString: globalComment string
						onFileNumber: sourceIndex
						toFile: aFileStream.
			moveSource ifTrue: [globalComment _ newRemoteString]].
	aFileStream emphasis: saveEmphasis.
