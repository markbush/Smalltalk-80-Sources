display
	list == nil ifTrue: [self list: Array new].
	self isUnlocked ifTrue: [self positionList].
	super display
