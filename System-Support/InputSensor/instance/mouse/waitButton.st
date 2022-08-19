waitButton
	"Wait for the user to press any mouse button and then answer with the
	current location of the cursor."
	[self anyButtonPressed] whileFalse.
	^self cursorPoint
