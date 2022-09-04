read: page
	"Read aFilePage if it exists, else answer false.  aFilePage contains a pageNumber and other
	information, e.g., a serialNumber necessary to obtain the page.  It is possible that 
	aFilePage pageNumber = 0 may or may not exist in some file systems. The pageNumber may
	be used to compute a byte range to be read, or to lookup a disk address in a table.
	In a file system where pages are linked, aFilePage may contain the address
	of the next page and may help reveal lastPageNumber."

	(self doCommand: 0 name: nil page: page error:'read:') ifFalse: [^nil].
	^page
