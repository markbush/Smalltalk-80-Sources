displayOn: aDisplayMedium transformation: displayTransformation clippingBox: clipRectangle align: alignmentPoint with: relativePoint rule: ruleInteger mask: aForm
	"Display the receiver where a DisplayTransformation is provided as an argument,
	rule is ruleInteger and mask is aForm.  Translate by relativePoint-alignmentPoint.
	Information to be displayed must be confined to the area that intersects with
	clipRectangle."

	| absolutePoint |
	absolutePoint _ displayTransformation applyTo: relativePoint.
	self displayOn: aDisplayMedium
		at: (absolutePoint - alignmentPoint)
		clippingBox: clipRectangle
		rule: ruleInteger
		mask: aForm
