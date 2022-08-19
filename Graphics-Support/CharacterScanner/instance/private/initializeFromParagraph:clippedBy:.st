initializeFromParagraph: aParagraph clippedBy: clippingRectangle
	text _ aParagraph text.
	textStyle _ aParagraph textStyle.
	destForm _ aParagraph destinationForm.
	outputMedium _ aParagraph outputMedium.
	halftoneForm _ aParagraph mask.
	self combinationRule: aParagraph rule.
	self clipRect: clippingRectangle.
	sourceY _ 0.
