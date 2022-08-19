displayOn: aDisplayMedium
	"Display on a new destination medium -- typically a form."

	self displayOn: aDisplayMedium
		at: compositionRectangle topLeft
		clippingBox: clippingRectangle
		rule: rule
		mask: mask
