read: pageNumber
	"The receiver is formatted into pages.  Access the information on page
	pageNumber.  Normally called by pastEnd, position:size:, reopen, reset, setToEnd.
	Answer nil if the pageNumber does not exist in the receiver.  Else answer
	the receiver as a FileStream on this new page."

	| p |
	pageNumber < 1 ifTrue: [^nil].
	closed
		ifTrue:
			["reopen the file, (re)read the page"
			page reopen.
			(p _ page readPageNumber: pageNumber) isNil
				ifTrue: [^nil]
				ifFalse: [^self on: p]].
	(pageNumber = page pageNumber and: [page size > 0 or: [position > page dataBeginning]])
		ifTrue:
			[self fixEnd.
			position _ page dataBeginning.
			^self].
	"current page has wrong page number or is empty (possibly from error)"
	self writing
		ifTrue:
			[((pageNumber > page pageNumber and: [page isFull == false])
				ifTrue:
					["fill up last page when positioning past it"
					position _ page dataMaxEnd.
					true]
				ifFalse: ["otherwise, fixEnd"
					position > page dataEnd])
				ifTrue: [page dataEnd: (readLimit _ position)].
			"write current page"
			page fromFileStream: self.
			p _ page write.
			p pageNumber = pageNumber ifFalse: ["read it or create it"
				p _ page readOrAddPageNumber: pageNumber"already have next page, e.g. at end of AltoFile"]]
		ifFalse: [p _ page readPageNumber: pageNumber].
	p isNil ifTrue: [^nil].
	(page _ p) asFileStream: self
