write: aFilePage
	"Write aFilePage, one that has been read or created (see File|readOrAdd:).
	If aFilePage pageNumber < lastPageNumber, make sure page is full.
	If aFilePage pageNumber = (lastPageNumber+1), then update file length.
	Page numbers greater than lastPageNumber+1 are illegal (use File|readOrAdd:).

	Answer the result of writing the page.  In some implementations, at end of file,
	the next empty page is also written and answered."

	self subclassResponsibility
