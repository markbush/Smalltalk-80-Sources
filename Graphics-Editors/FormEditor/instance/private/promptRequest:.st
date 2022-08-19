promptRequest: outputMessage
	"Answers with a string typed by the user on the keyboard. keyboard input is
	terminated by a line feed character. Typing feedback happens in a window that
	is at least 100 bits wide and 50 bits high."

	| answer |
	FillInTheBlank
		request: outputMessage
		displayAt: view insetDisplayBox topCenter + (0@80)
		centered: true
		action: [:answer]
		initialAnswer: ''.
	^answer
