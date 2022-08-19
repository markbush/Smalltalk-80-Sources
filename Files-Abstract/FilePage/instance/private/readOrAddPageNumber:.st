readOrAddPageNumber: aPageNumber
	"answer with the result of file reading a page or creating a page into me"

	self pageNumber: aPageNumber.
	self size: 0.
	^file readOrAdd: self
