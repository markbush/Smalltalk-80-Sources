displayOn: aDisplayMedium at: aPoint clippingBox: clipRect rule: anInteger mask: aForm
	"Method for display of a Spline curve approximated by straight line segments."

	| segment steps a b c d t |
	segment _ Line new.
	segment form: self form.
	segment beginPoint: self first.
	1 to: self size-1 do:		"for each knot"
		[:k |
			"taylor series coefficients"
		d _ self at: k.
		c _ (derivatives at: 1) at: k.
		b _ ((derivatives at: 2) at: k) / 2.0.
		a _ ((derivatives at: 3) at: k) / 6.0.
			"guess stepping parameter"
		steps _ ((derivatives at: 2) at: k) abs + ((derivatives at: 2) at: k+1) abs.
		steps _ 5 max: (steps x + steps y) // 100.
		1 to: steps - 1 do:
			[:j |
			t _ j asFloat / steps.
			segment endPoint: a * t + b * t + c * t + d.
			segment
				displayOn: aDisplayMedium
				at: aPoint
				clippingBox: clipRect
				rule: anInteger
				mask: aForm.
			segment beginPoint: segment endPoint].
		segment endPoint: (self at: k+1).
		segment
			displayOn: aDisplayMedium
			at: aPoint
			clippingBox: clipRect
			rule: anInteger
			mask: aForm]
