cut: characterStream
	"Cut out the current text selection."

	sensor keyboard.	"flush character"
	self cut.
	^true
