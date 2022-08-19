displayAt: aPoint
	"Because Paragraphs cache so much information, computation is avoided and
	displayAt: 0@0 is not appropriate here"

	self displayOn: destinationForm
		at: aPoint
		clippingBox: clippingRectangle
		rule: rule
		mask: mask
