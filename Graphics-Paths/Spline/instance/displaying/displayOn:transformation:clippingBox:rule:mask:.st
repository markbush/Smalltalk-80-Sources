displayOn: aDisplayMedium transformation: aTransformation clippingBox: clipRect rule: anInteger mask: aForm
	"get the scaled and translated path of newKnots."

	| newKnots newSpline |
	newKnots _ aTransformation applyTo: self.
	newSpline _ Spline new.
	newKnots do: [:knot | newSpline add: knot].
	newSpline form: self form.
	newSpline
		displayOn: aDisplayMedium
		at: 0 @ 0
		clippingBox: clipRect
		rule: anInteger
		mask: aForm
