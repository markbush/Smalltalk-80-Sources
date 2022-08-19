paste: characterStream
	"Replace the current text selection by the text in the shared buffer."

	sensor keyboard.		"flush character"
	self paste.
	^true
