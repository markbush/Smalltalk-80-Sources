isControlActive
	"Answer false if the blue mouse button is pressed and the cursor is outside of
	the inset display box of the Controller's view;  answer true, otherwise."

	^sensor keyboardPressed |
		(view containsPoint: sensor cursorPoint) & sensor blueButtonPressed not
