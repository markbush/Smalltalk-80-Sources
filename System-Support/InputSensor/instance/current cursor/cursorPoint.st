cursorPoint
	"Answer a Point indicating the cursor location."
	^self mousePoint - CurrentCursor offset
