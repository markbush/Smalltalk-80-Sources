fileOutChangedMessages: aSet on: aFileStream
	"File a description of the messages of the receiver that have been changed
	(i.e., are entered into the system ChangeSet) onto aFileStream."

	self fileOutChangedMessages: aSet
		on: aFileStream
		moveSource: false
		toFile: 0
