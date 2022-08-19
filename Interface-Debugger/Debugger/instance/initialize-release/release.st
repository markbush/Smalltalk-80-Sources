release
	processHandle terminate.
	context _ nil.
	receiverInspector _ nil.
	contextInspector _ nil.
	Smalltalk resetSpaceLimits.
	super release
