classComment: aString
	"Store the comment, aString, associated with the object that refers to the receiver."

	aString size = 0
		ifTrue: [globalComment _ nil]
		ifFalse: [globalComment _ RemoteString newString: aString onFileNumber: 2]
