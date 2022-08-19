documentation
	"Subclasses of File are expected to implement the following messages.  Unless 	otherwise indicated, they are provided as self subclassResponsibilty

	testing
		[optional] characterSize

	fileStream accessing
		read:
		write:

	file accessing
		endFile:

	file status
	(these are implemented as returning self)
		close
		release

	error handling
		errorString:

	file/page/directory implementation
		doCommand:page:error:

	private
		[optional] findLastPageNumber
			(this has an implementation but is circular with characterSize
				so one or both must be reimplemented)
		pageClass

"
