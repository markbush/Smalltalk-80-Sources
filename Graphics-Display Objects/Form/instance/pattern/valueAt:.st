valueAt: aPoint
	"Query whether a bit is on or off.... answer with 1 if the color at coordinate aPoint
	is black in the receiver and 0 if the color is white at coordinate aPoint"

	OneBitForm copyBits: (aPoint extent: 1 @ 1)
		from: self
		at: 0 @ 0
		clippingBox: self boundingBox
		rule: Form over
		mask: Form black.
	(OneBitForm bits at: 1) = 0
		ifTrue: [^0]
		ifFalse: [^1]
