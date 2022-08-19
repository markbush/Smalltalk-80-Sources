displayOn: aDisplayMedium at: aPoint clippingBox: clipRect rule: anInteger mask: aForm
	| nSegments line angle sin cos xn yn xn1 yn1 |
	nSegments _ 12.0.
	line _ Line new.
	line form: self form.
	angle _ 90.0 / nSegments.
	sin _ (angle * (2 * Float pi / 360.0)) sin.
	cos _ (angle * (2 * Float pi / 360.0)) cos.
	quadrant = 1
		ifTrue:
			[xn _ radius asFloat.
			yn _ 0.0].
	quadrant = 2
		ifTrue:
			[xn _ 0.0.
			yn _ 0.0 - radius asFloat].
	quadrant = 3
		ifTrue:
			[xn _ 0.0 - radius asFloat.
			yn _ 0.0].
	quadrant = 4
		ifTrue:
			[xn _ 0.0.
			yn _ radius asFloat].
	nSegments truncated
		timesRepeat:
			[xn1 _ xn * cos + (yn * sin).
			yn1 _ yn * cos - (xn * sin).
			line beginPoint: center + (xn truncated @ yn truncated).
			line endPoint: center + (xn1 truncated @ yn1 truncated).
			line
				displayOn: aDisplayMedium
				at: aPoint
				clippingBox: clipRect
				rule: anInteger
				mask: aForm.
			xn _ xn1.
			yn _ yn1]
