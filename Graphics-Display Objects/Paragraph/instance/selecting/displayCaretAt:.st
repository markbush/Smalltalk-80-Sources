displayCaretAt: aPoint
	"Display CaretForm located at aPoint with default settings for rule and halftone."

	CaretForm
		displayOn: destinationForm
		at: aPoint
		clippingBox: clippingRectangle
		rule: Form reverse
		mask: Form black
