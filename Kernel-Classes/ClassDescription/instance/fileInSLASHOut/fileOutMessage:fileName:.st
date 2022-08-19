fileOutMessage: aString fileName: fileName
	"Create a local file named fileName
	and file a description of the receiver's message aString onto it"

	| fileStream |
	fileStream _ Disk file: fileName.
	fileStream timeStamp.
	self fileOutMessage: aString
		on: fileStream
		moveSource: false
		toFile: 0.
	fileStream close
