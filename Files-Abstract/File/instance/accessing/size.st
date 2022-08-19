size
	"Answer the receiver's size in pages;  a file is a collection of pages."

	lastPageNumber isNil
		ifTrue: [^self findLastPageNumber]
		ifFalse: [^lastPageNumber]
