waitNoButton
	"Wait for the user to release any mouse button and then answer with the
	current location of the cursor."
	[self anyButtonPressed] whileTrue.
	^self cursorPoint
