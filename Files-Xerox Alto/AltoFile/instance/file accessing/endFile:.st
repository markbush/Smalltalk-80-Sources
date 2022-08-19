endFile: aPage
	| page nextPage pn |
	page _ aPage.
	page isNil
	  ifTrue: [pn _ -1 "free all of file"]
	  ifFalse:
		[page isFull
		  ifTrue:
			[nextPage _ self write: page.
			"if page was a full last page, next is an empty (and now last) page"
			nextPage lastPage ifTrue: [^nextPage].
			page _ self readPageNumber: page pageNumber + 1.
			page isEmpty ifTrue: [^page].
			page size: 0].
		page headerWordAt: Nextp put: 0.
		self write: page.
		"free rest of file"
		pn _ page pageNumber].

	lastPageNumber _ nil "reset by read:".
	[lastPageNumber isNil and: [
		(nextPage _ self readPageNumber: (pn _ pn + 1)) notNil]] whileTrue:
		[nextPage reinitialize.
		nextPage freePage.
		nextPage doCommand: CWW error: 'endFile:'.
		fileDirectory deallocate: nextPage].

	page notNil
	  ifTrue: [pageAddresses shortenTo: (lastPageNumber _ page pageNumber)].
	^page
