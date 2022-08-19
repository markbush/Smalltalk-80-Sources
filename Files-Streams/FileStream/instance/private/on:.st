on: aFilePage
	"initialize stream on aFilePage"

	page _ aFilePage.
		"some page from a File, usually page 1, or another FileStream"
	(page isKindOf: FileStream)
		ifTrue: [page _ page page].
	page asFileStream: self.
	closed _ false.
	FileDirectory addExternalReference: self
