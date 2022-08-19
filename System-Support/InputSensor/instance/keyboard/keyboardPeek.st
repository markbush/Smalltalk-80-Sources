keyboardPeek
	"Answer the next character in the keyboard buffer or false if it is empty.
	self keyboardPressed must be true, else an error is created."

	self keyboardPressed ifTrue: [^self mapKeyboardEvent: self primKbdPeek].
	self error: 'Cant peek when nothing there'
