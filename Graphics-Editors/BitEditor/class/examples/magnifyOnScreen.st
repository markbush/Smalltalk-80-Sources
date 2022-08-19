magnifyOnScreen
	"Bit editing of an area of the display screen. User designates a
	rectangular area that is magnified by 8 to allow individual screens dots to be
	modified. red button is used to set a bit to black and yellow button is used to set a
	bit to white. Editor is not scheduled in a view.  Original screen location is
	updated immediately.  This is the same as FormEditor magnify."

	| smallRect smallForm scaleFactor tempRect |
	scaleFactor _ 8 @ 8.
	smallRect _ Rectangle fromUser.
	smallRect isNil ifTrue: [^self].
	smallForm _ Form fromDisplay: smallRect.
	tempRect _ self locateMagnifiedView: smallForm scale: scaleFactor.
	"show magnified form size until mouse is depressed"
	BitEditor
		openScreenViewOnForm: smallForm
		at: smallRect topLeft
		magnifiedAt: tempRect topLeft
		scale: scaleFactor

	"BitEditor magnifyOnScreen."
