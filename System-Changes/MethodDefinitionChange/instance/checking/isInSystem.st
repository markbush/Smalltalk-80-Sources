isInSystem
	self sourceFileAndPosition:
		[:aFile :aPosition |
		(file = aFile and: [position = aPosition])
			ifTrue: [^true]].
	^false
