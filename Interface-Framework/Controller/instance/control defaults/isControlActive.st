isControlActive
	"Answer whether the receiver wants control.  The default is to take control
	if the cursor is inside the view and the blue button is not pressed.  Pressing
	blue button a default to explicitly give up control without moving the cursor.
	It is sent by Controller|controlLoop in order to determine when the receiver's control
	loop should terminate, and should be redefined in a subclass if some other
	condition for terminating the main control loop is needed."

	^(view containsPoint: sensor cursorPoint) & sensor blueButtonPressed not
