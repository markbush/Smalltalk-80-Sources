currentCursor: newCursor
	"Set newCursor to be the displayed Cursor form."
	CurrentCursor offset = newCursor offset
		ifFalse: [self primCursorLocPut: self cursorPoint + newCursor offset].
	CurrentCursor _ newCursor.
	Cursor currentCursor: CurrentCursor
