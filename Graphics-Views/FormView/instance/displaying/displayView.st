displayView
	| oldOffset |
	super displayView.
	insideColor == nil ifFalse: [Display fill: self insetDisplayBox mask: insideColor].
	oldOffset _ model offset.
	model offset: 0@0.
	model
		displayOn: Display
		transformation: self displayTransformation
		clippingBox: self insetDisplayBox
		rule: self rule
		mask: self mask.
	model offset: oldOffset
