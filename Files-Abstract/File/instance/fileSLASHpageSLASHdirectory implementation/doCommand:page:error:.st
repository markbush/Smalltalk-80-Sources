doCommand: command page: aFilePage error: errorString
	"The argument, command, is typically read or write;
	page is a FilePage containing data and possibly other information;
	errorString is a String to include in an error message
	(or if it is nil, no error is to be reported).

	Execute some disk primitive (which is usually another message).

	Answer aFilePage if successful. If an error occurs, answer false if errorString is nil.
	Otherwise, create an error message with errorString."

	self subclassResponsibility
