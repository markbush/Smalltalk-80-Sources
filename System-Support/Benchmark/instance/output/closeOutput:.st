closeOutput: aStream
	self streamsRatherThanFiles
		ifTrue: [aStream reset]
		ifFalse: [aStream close]
