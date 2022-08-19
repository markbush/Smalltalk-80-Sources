lock
	"'Lock' the receiver and all of its subViews (see View|isLocked). This has the effect
	of computing and storing the display transformation (see View|displayTransformation)
	and inset display box (see View|insetDisplayBox) of the receiver and all its subViews.
	 The locking and unlocking of a View is handled automatically by the internal
	methods of the View, but can also be done explicitly if desired."

	self isLocked ifTrue: [^self].
	displayTransformation _ self computeDisplayTransformation.
	insetDisplayBox _ self computeInsetDisplayBox.
	subViews do: [:aSubView | aSubView lock]
