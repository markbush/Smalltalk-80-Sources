isLocked
	^super isLocked
	| projectChangeSet isEmpty not
	| (projectWindows scheduledControllers size > 1)
