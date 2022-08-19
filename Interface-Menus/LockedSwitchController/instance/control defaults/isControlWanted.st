isControlWanted
	model isLocked
		ifTrue:
			[view flash.
			^false].
	^super isControlWanted
