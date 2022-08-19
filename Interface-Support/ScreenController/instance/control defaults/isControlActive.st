isControlActive
	^super isControlActive and: [sensor yellowButtonPressed]
