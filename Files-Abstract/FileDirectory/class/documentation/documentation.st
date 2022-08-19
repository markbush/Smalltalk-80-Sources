documentation
	"subclasses are expected to implement the following messages which are
	implemented as self subclassResponsibility unless otherwise noted.

	file accessing
		fileClass
		[optional] rename:newName:
		[default] checkNameOfFile:
			(default makes no sense to me; for the abstract anything is okay)

	file status
		[optional] flush

	page accessing
		[optional] allocate:after:
		[optional] allocateSN
		[optional] deallocate:
		[optional] freePages

	dictionary adding
		addNew:

	dictionary removing
		removeOld:

	dictionary enumerating
		[optional] next
		[default] do:
		[optional] reset

	directory accessing
		[default] versionNumbers

"
