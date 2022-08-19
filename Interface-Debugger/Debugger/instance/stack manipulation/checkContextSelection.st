checkContextSelection
	context == nil ifTrue: [context _ processHandle topContext]
