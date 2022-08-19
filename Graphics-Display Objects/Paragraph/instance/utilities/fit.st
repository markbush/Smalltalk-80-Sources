fit
	"Make the bounding rectangle of the receiver contain all the text without
	changing the width of the receiver's composition rectangle."

	[(self lineIndexOfTop: clippingRectangle top) = 1]
		whileFalse: [self scrollBy: (0-1)*textStyle lineGrid].
	self updateCompositionHeight.
	clippingRectangle bottom: compositionRectangle bottom
