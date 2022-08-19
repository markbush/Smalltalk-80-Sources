rubberBandCurve: startPoint to: endPoint until: aBlock
	| curve previousApex apex | "Return a curve"
	curve _ Curve new.
	curve firstPoint: startPoint.
	curve secondPoint: (previousApex _ self cursorPoint).
	curve thirdPoint: endPoint.
	curve form: form.
	curve
		displayOn: Display
		at: 0 @ 0
		clippingBox: view insetDisplayBox
		rule: Form reverse
		mask: Form black.

	[aBlock value] whileFalse:
		[(apex _ self cursorPoint) = previousApex
			ifFalse:
			[curve
				displayOn: Display
				at: 0 @ 0
				clippingBox: view insetDisplayBox
				rule: Form reverse
				mask: Form black.
			curve secondPoint: apex.
			curve
				displayOn: Display
				at: 0 @ 0
				clippingBox: view insetDisplayBox
				rule: Form reverse
				mask: Form black.
			previousApex  _ apex]].
		curve
				displayOn: Display
				at: 0 @ 0
				clippingBox: view insetDisplayBox
				rule: Form reverse
				mask: Form black.
	^ curve
