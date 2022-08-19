displayIfFalse: characterStream
	"Replace the current text selection with the text 'ifFalse:'--initiated by ctrl f."

	sensor keyboard.		"flush character"
	characterStream nextPutAll: 'ifFalse:'.
	^false
