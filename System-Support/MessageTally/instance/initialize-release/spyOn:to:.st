spyOn: aBlock to: fileName
	"Spy on the evaluation of aBlock.  Write the data collected on a file named fileName."
	| val aFileStream |
		"Set up the block"
	self spyEvery: self defaultInterval on: aBlock.
		"Run the block and take the tallies"
	val _ self continueSpying.
		"Report it"
	aFileStream _ FileStream fileNamed: fileName.
	aFileStream timeStamp; nextPutAll: fileName; space.
	self reportOn: aFileStream.
	self close.
	aFileStream close.
	^val
