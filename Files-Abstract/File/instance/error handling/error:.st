error: e
	"Construct an error message using the argument, e."

	| s errorString |
	s _ WriteStream on: (String new: 50).
	s nextPutAll: fileName.
	s nextPutAll: ' '.
	s nextPutAll: e.
	s nextPutAll: ', '.
	s nextPutAll: error.
	errorString _ s contents.
	error _ ''.
	^super error: errorString
