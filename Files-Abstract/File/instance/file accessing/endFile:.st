endFile: aFilePage
	"Make the file end with aFilePage, i.e., remove all file pages after
	aFilePage, and answer the result of writing aFilePage (File|write:). If the argument is
	nil, delete all of the receiver's pages."

	self subclassResponsibility
