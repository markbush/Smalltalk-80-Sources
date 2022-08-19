fileOut
	self controlTerminate.
	self
		getFile: #file:
		withPrompt: 'type name of file for writing'
		do:
			[:aFile |
			model fileOutOn: aFile.
			aFile shorten; close].
	self controlInitialize
