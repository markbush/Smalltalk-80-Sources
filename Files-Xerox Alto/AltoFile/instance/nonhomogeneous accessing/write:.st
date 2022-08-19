write: page
	| nextPage labelDirty returnPage |
	((labelDirty _ page lastPage) and: [page isFull])
	  ifTrue:
		["last page can't be full, so glue on another page"
		returnPage _ nextPage _ self initPageNumber: 0.
		fileDirectory allocate: nextPage after: (fileDirectory realToVirtual: page address).
		nextPage reinitialize.
		nextPage headerWordAt: Backp put: page address.
		nextPage pageNumber: (lastPageNumber _ page pageNumber + 1).
		nextPage serialNumber: serialNumber.
		nextPage doCommand: CWW error: 'write: (allocate)'.
		"link to current page"
		page headerWordAt: Nextp put: nextPage address.
		pageAddresses ~~ nil
		  ifTrue: [pageAddresses addLast: nextPage address]]
	  	  ifFalse: [returnPage _ page].

	"whenever a last (or second last) page is written, write label also"
	self doCommand: (labelDirty
	  					ifTrue: [CWW]
	  					ifFalse: [CCW]) page: page error: 'write:'.
	readWrite _ Read + Write.
	^returnPage
