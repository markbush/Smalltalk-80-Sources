displayOn: aDisplayMedium transformation: displayTransformation clippingBox: clipRectangle align: alignmentPoint with: relativePoint rule: ruleInteger mask: aForm

	self				"Assumes offset has been set!!!!!"
	  displayOn: aDisplayMedium
	  at: (offset
			+ (displayTransformation applyTo: relativePoint)
			- alignmentPoint) rounded
	  clippingBox: clipRectangle
	  rule: ruleInteger
	  mask: aForm.
