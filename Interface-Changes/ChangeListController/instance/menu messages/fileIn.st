fileIn
	self controlTerminate.
	self
		getFile: #oldFile:
		withPrompt: 'type name of file for reading'
		do:
			[:aFile |
			aFile readOnly.
			model scanFile: aFile.
			aFile close].
	self controlInitialize
