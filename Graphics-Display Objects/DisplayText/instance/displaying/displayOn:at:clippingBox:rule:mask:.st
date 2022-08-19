displayOn: aDisplayMedium at: aDisplayPoint clippingBox: clipRectangle rule: ruleInteger mask: aForm
	self form
		displayOn: aDisplayMedium
		at: aDisplayPoint + offset
		clippingBox: clipRectangle
		rule: ruleInteger
		mask: aForm
