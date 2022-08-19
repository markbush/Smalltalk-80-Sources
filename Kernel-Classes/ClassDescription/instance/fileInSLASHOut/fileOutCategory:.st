fileOutCategory: aString
	"Create a file whose name is the name of the receiver with -.st- as the
	extension, and file a description of the receiver's category aString onto it"

	| fileName fileStream |
	fileName _ Disk checkName: self name , '-' , aString , '.st' fixErrors: true.
	fileStream _ Disk file: fileName.
	fileStream timeStamp.
	self fileOutCategory: aString
		on: fileStream
		moveSource: false
		toFile: 0.
	fileStream shorten; close
