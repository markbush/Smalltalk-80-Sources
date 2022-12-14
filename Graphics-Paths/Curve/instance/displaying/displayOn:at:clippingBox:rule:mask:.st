displayOn: aDisplayMedium at: aPoint clippingBox: clipRect rule: anInteger mask: aForm
	| pa pb k s p1 p2 p3 line |
	line _ Line new.
	line form: self form.
	collectionOfPoints size < 3 ifTrue: [self error: 'Curve must have three points'].
	p1 _ self firstPoint.
	p2 _ self secondPoint.
	p3 _ self thirdPoint.
	s _ Path new.
	s add: p1.
	pa _ p2 - p1.
	pb _ p3 - p2.
	k _ 5 max: pa x abs + pa y abs + pb x abs + pb y abs // 20.
	"k is a guess as to how many line segments to use to approximate
	the curve."
	1 to: k do:
		[:i |
		s add: pa * i // k + p1 * (k - i) + (pb * (i - 1) // k + p2 * (i - 1)) // (k - 1)].
	s add: p3.
	1 to: s size - 1 do:
		[:i |
		line beginPoint: (s at: i).
		line endPoint: (s at: i + 1).
		line displayOn: aDisplayMedium
			at: aPoint
			clippingBox: clipRect
			rule: anInteger
			mask: aForm]
