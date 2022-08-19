release

	super release.
	toolMenu notNil ifTrue: [toolMenu view release].
	toolMenu _ form _ nil
