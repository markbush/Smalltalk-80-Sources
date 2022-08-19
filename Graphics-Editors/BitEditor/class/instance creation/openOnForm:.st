openOnForm: aForm
	| scaleFactor |
	scaleFactor _ 8 @ 8.
	^ self openOnForm: aForm
		at: (self locateMagnifiedView: aForm scale: scaleFactor) topLeft
		scale: scaleFactor
