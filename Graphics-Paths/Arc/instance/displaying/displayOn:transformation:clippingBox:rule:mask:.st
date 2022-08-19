displayOn: aDisplayMedium transformation: aTransformation clippingBox: clipRect rule: anInteger mask: aForm
	| newArc tempCenter |
	newArc _ Arc new.
	tempCenter _ aTransformation applyTo: self center.
	newArc center: tempCenter x truncated @ tempCenter y truncated.
	newArc quadrant: self quadrant.
	newArc radius: (self radius * aTransformation scale x) truncated.
	newArc form: self form.
	newArc
		displayOn: aDisplayMedium
		at: 0 @ 0
		clippingBox: clipRect
		rule: anInteger
		mask: aForm
