getFile
	self changeRequest ifFalse: [^self].
	isReading _ true.
	self changed: #text
