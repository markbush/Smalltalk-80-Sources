example
	"Continually prints two lines of text wherever you point with the cursor.
	Terminate by pressing any mouse button."

	| t |
	t _ 'this is a line of characters and
this is the second line.' asDisplayText.
	[Sensor anyButtonPressed]
		whileFalse:
			[t displayOn: Display at: Sensor cursorPoint]

	"DisplayText example."
