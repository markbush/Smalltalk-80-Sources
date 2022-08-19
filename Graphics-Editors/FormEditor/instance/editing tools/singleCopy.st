singleCopy
	form
		displayOn: Display
		at: self cursorPoint
		clippingBox: view insetDisplayBox
		rule: mode
		mask: color.
	sensor waitNoButton
