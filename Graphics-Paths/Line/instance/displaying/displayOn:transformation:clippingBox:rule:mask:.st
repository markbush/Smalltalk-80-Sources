displayOn: aDisplayMedium transformation: aTransformation clippingBox: clipRect rule: anInteger mask: aForm
	| newPath newLine |
	newPath _ aTransformation applyTo: self.
	newLine _ Line new.
	newLine beginPoint: newPath firstPoint.
	newLine endPoint: newPath secondPoint.
	newLine form: self form.
	newLine
		displayOn: aDisplayMedium
		at: 0 @ 0
		clippingBox: clipRect
		rule: anInteger
		mask: aForm
