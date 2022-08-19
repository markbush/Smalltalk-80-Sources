browseMessages
	Smalltalk showMenuThenBrowse:
		(self selectedClass compiledMethodAt: selector)
			messages asSortedCollection
