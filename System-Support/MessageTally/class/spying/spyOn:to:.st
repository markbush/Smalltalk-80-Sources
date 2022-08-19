spyOn: aBlock to: fileName
	"Spy on the evaluation of aBlock.  Write the data collected on a file named fileName.
	The value of the block is returned as the value of this method.  For example:
		MessageTally spyOn: [Smalltalk asSortedCollection] to: 'spy.results'.
		(FileStream oldFileNamed: 'spy.results') edit.
	"
	| spy val aFileStream |
	spy _ self new.
	"Set up the block"
	spy spyEvery: spy defaultInterval on: aBlock.
		"Run the block and take the tallies"
	val _ spy continueSpying.
		"Report it"
	aFileStream _ FileStream fileNamed: fileName.
	aFileStream timeStamp; nextPutAll: fileName; space.
	spy reportOn: aFileStream; close.
	aFileStream close.
	^val
