isControlWanted
	model actionTaken ifTrue: [^false].
	^super isControlActive
