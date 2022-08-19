fileName
	(file isKindOf: FileStream)
		ifTrue: [^file name]
		ifFalse: [^'some local stream']
