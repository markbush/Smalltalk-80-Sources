findKey: aFileName
	^self
		find: (self initFileName: aFileName)
		ifAbsentDo: [:file | file error: 'file not found']
