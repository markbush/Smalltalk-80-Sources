write: page
	| returnPage |
	self doCommand: 1 name: nil page: page error:'write:'.

	returnPage _ page.
	((page lastPage) and: [page isFull])
	  ifTrue: ["last page can't be full, so glue on another page"
		returnPage _ self initPageNumber: 0.
		returnPage reinitialize.
		returnPage pageNumber: (lastPageNumber _ page pageNumber + 1)].
	readWrite _ Read + Write.
	^returnPage
