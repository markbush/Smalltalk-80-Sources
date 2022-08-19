keyboard
	"Answer the next character from the keyboard buffer as a fully decoded
	(ASCII) character."

	^self mapKeyboardEvent: self primKbdNext
