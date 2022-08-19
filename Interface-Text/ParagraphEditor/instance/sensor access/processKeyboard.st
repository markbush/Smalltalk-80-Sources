processKeyboard
	"Determine whether the user pressed the keyboard.  If so, read the keys."
	sensor keyboardPressed
		ifTrue: [self readKeyboard]
