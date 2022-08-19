fileOutOn: aFileStream moveSource: moveSource toFile: fileIndex
	"file me out on aFileStream"
	aFileStream emphasis: 5.		"Meant to be 12 point bold font."
	aFileStream nextChunkPut: self definition.
	self organization
		putCommentOnFile: aFileStream
		numbered: fileIndex
		moveSource: moveSource.
	aFileStream cr.
	self organization categories do:
		[:heading |
		self
			fileOutCategory: heading
			on: aFileStream
			moveSource: moveSource
			toFile: fileIndex]
