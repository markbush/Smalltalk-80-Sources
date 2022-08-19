centerCursorInView
	"Position sensor's mousePoint (which is assumed to be connected to the
	cursor) to the center of its view's inset display box (see Sensor|mousePoint: and
	View|insetDisplayBox)."

	^sensor cursorPoint: view insetDisplayBox center
