displayOn: aDisplayMedium at: aDisplayPoint rule: ruleInteger
	"Display the receiver located at aPoint with default setting for the halftone and clippingBox."

	self displayOn: aDisplayMedium
		at: aDisplayPoint
		clippingBox: aDisplayMedium boundingBox
		rule: ruleInteger
		mask: Form black
