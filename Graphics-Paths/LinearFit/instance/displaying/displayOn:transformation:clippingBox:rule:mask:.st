displayOn: aDisplayMedium transformation: aTransformation clippingBox: clipRect rule: anInteger mask: aForm

	| newLinearFit transformedPath |
	"get the scaled and translated Path."
	transformedPath _ aTransformation applyTo: self.
	newLinearFit _ LinearFit new.
	transformedPath do: [:point | newLinearFit add: point].
	newLinearFit form: self form.
	newLinearFit
		displayOn: aDisplayMedium
		at: 0 @ 0
		clippingBox: clipRect
		rule: anInteger
		mask: aForm
