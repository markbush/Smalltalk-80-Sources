endFile: aPage
	| nextPage |
	"Make the file end with aFilePage, i.e., remove all file pages after 
	aFilePage, and answer the result of writing aFilePage (File|write:). If the argument is
	nil, delete all of the receiver's pages."
	
	aPage isNil ifFalse: [ nextPage _ self write: aPage ]
		    ifTrue: [ nextPage _ nil ].
	"truncate"
	self doCommand: 2 name: nil page: aPage error:'endFile:'.
	self findLastPageNumber.
	^nextPage
