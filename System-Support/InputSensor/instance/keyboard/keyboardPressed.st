keyboardPressed
	"Answer false if the keyboard buffer is empty, else true."

	^self primKbdPeek notNil	"The keyboard queue only contains real keystrokes, so
								just test if it is non-empty."
