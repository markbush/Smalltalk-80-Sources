size
	"return size of File in characters"

	self reopen.
	self fixEnd.
	"if on last page, return answer directly"
	page lastPage
		ifTrue: [^page pageNumber - 1 * page dataSize + page size]
		ifFalse: [^self file characterSize]
