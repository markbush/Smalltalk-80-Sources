manageMarker
	"If the cursor is inside the receiver's frame, then highlight the marked item.
	Otherwise no item is to be marked."

	| aPoint |
	aPoint _ Sensor cursorPoint.
	(frame inside containsPoint: aPoint)
		ifTrue: [self markerOn: aPoint]
		ifFalse: [self markerOff]
