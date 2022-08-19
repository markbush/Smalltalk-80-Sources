displayDate: characterStream
	"Replace the current text selection with today's date--initiated by ctrl d."

	sensor keyboard.		"flush character"
	characterStream nextPutAll: Date today printString.
	^false
