displayView
	contents
		displayOn: Display
		transformation: self displayTransformation
		clippingBox: self insetDisplayBox
		fixedPoint: contents boundingBox center.
	super displayView
