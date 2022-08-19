magnify
	"Allow for bit editing of an area of the Form. The user designates a rectangular
	area that is scaled by 5 to allow individual screens dots to be modified.
	red button is used to set a bit to black and yellow button is used to set a bit to
	white. Editing continues until the user depresses any key on the keyboard."

	| smallRect smallForm scaleFactor tempRect |
	scaleFactor _ 8@8.
	smallRect _ (Rectangle fromUser: grid) intersect: view insetDisplayBox.
	smallRect isNil ifTrue: [^self].
	smallForm _ Form fromDisplay: smallRect.

	"Do this computation here in order to be able to save the existing display screen."
	tempRect _ BitEditor locateMagnifiedView: smallForm scale: scaleFactor.
	BitEditor
		openScreenViewOnForm: smallForm
		at: smallRect topLeft
		magnifiedAt: tempRect topLeft
		scale: scaleFactor.
	tool _ previousTool
