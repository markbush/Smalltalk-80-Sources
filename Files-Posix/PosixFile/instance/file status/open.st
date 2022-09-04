open
	self doCommand: 4 name: fileName page: nil error: 'open:'.
	readWrite _ Read.
	self findLastPageNumber
