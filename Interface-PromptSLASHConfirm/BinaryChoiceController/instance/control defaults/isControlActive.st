isControlActive
	model actionTaken ifTrue: [^false].
	[super isControlActive] whileFalse: [view flash].
	^true
