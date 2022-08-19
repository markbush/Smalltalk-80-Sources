isControlWanted
	^super isControlWanted and: [sensor yellowButtonPressed]
