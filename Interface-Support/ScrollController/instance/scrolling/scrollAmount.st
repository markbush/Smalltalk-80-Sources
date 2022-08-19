scrollAmount
	"Answer the number of bits of y-coordinate should be scrolled.  This is a
	default determination based on the view's preset display transformation."

	^((view inverseDisplayTransform: sensor cursorPoint)
		- (view inverseDisplayTransform: scrollBar inside topCenter)) y
