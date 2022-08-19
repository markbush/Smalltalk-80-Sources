characterSize
	"Answer the size of the receiver in characters.  The definitions
	characterSize and findLastPageNumber are circular;  a subclass must
	define either or both."

	| page |
	page _ self readPageNumber: self size.
	^lastPageNumber - 1 * page dataSize + page size
