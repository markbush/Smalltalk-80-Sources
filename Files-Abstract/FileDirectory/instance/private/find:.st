find: aFile
	^self find: aFile ifAbsentDo: [:f | nil]
