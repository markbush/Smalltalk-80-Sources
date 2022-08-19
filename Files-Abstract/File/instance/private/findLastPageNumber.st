findLastPageNumber
	"set and answer with the page number of my last page.
	see circularity comment for characterSize"

	^lastPageNumber _ self pageNumberFrom: self size
