removeKey: aFileName
	"Remove and answer the file whose name is aFileName;  create an error if not
	found."
	^self
		remove: (self initFileName: aFileName)
		ifAbsentDo: [:f | f error: 'file not found']
