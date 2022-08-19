displayIfTrue: characterStream
	"Replace the current text selection with the text 'ifTrue:'--initiated by ctrl t."

	sensor keyboard.		"flush character"
	characterStream nextPutAll: 'ifTrue:'.
	^false
