computeInsetDisplayBox
	"Compute the View's inset display box by intersecting the superView's inset
	display box with the View's window transformed to display coordinates and
	then inseting the result by the border width. It is sent by
	View|insetDisplayBox if the inset display box is nil."

	self isTopView
		ifTrue:
			[^(self displayTransform: self getWindow) insetBy: borderWidth]
		ifFalse:
			[^(superView insetDisplayBox
				intersect: (self displayTransform: self getWindow))
						insetBy: borderWidth]
