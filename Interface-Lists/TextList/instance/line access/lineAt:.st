lineAt: lineIndex
	^ TextLineInterval
		start: 1
		stop: (list at: lineIndex) size
		internalSpaces: 1
		paddingWidth: 0
