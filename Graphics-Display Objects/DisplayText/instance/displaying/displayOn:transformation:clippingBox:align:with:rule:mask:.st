displayOn: aDisplayMedium transformation: displayTransformation clippingBox: clipRectangle align: alignmentPoint with: relativePoint rule: ruleInteger mask: aForm
	| absolutePoint |
	absolutePoint _ displayTransformation applyTo: relativePoint.
	absolutePoint _ absolutePoint x truncated @ absolutePoint y truncated.
	self displayOn: aDisplayMedium
		at: absolutePoint - alignmentPoint
		clippingBox: clipRectangle
		rule: ruleInteger
		mask: aForm
