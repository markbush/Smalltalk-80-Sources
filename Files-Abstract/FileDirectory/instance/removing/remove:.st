remove: aFile
	"Remove aFile if found in the receiver.  Create an error if it is not."

	^self remove: aFile ifAbsentDo: [:f | f error: 'file not found']
