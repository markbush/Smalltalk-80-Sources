checkWithSystem: aBoolean
	self
		getFile: #file:
		withPrompt: 'type name of file on which to write confilicts'
		do:
			[:aFile |
			Cursor execute showWhile: [model checkWithSystem: aBoolean].
			Cursor write showWhile: [model reportConflictsOn: aFile].
			aFile shorten; close]
