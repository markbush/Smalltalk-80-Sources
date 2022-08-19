readOrAddPageNumber: aPageNumber
	"create aFilePage and read or extend into it"

	^self readOrAdd: (self initPageNumber: aPageNumber)
