displayOn: aDisplayMedium at: aDisplayPoint clippingBox: clipRectangle rule: ruleInteger mask: aForm
	aDisplayMedium copyBits: self boundingBox
		from: self
		at: aDisplayPoint + offset
		clippingBox: clipRectangle
		rule: ruleInteger
		mask: aForm
