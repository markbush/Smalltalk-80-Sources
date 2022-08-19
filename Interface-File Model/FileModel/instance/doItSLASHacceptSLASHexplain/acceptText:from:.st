acceptText: aText from: aController
	"Update the contents of the file stream with the receiver's contents.  If the file name does not include an explicit version number, create a new version."

	Cursor write showWhile:
		[((fileName includes: $!)
			ifTrue: [FileStream fileNamed: fileName]
			ifFalse: [FileStream newFileNamed: fileName]) nextPutAll: aText string; close].
	^true
