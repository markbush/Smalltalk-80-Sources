readPageNumber: aPageNumber
	"Answer the result of file reading a page into the receiver."

	self pageNumber: aPageNumber.
	self size: 0.
	^file read: self
