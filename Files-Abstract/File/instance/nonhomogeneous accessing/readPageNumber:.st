readPageNumber: aPageNumber
	"Create a FilePage for page number, aPageNumber, and read into it."

	^self read: (self initPageNumber: aPageNumber)
