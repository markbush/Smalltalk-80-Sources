initPageNumber: aPageNumber
	"Create and initialize the file page with page number, aPageNumber;
	serial number that of the receiver.  Answer the new FilePage."

	| aFilePage |
	aFilePage _ self pageClass new file: self page: nil.
	binary
		ifTrue: [aFilePage binary]
		ifFalse: [aFilePage text].
	aFilePage pageNumber: aPageNumber.
	aFilePage serialNumber: serialNumber.
	^aFilePage
