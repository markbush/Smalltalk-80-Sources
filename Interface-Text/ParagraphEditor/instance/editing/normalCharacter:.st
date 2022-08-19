normalCharacter: characterStream
	"A nonspecial character is to be added to the stream of characters."

	characterStream nextPut: sensor keyboard.
	^false
