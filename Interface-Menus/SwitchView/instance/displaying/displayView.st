displayView
	"Does the standard View actions and, in addition, displays the receiver's
	label based on the current display transformation and inset display box."

	self clearInside.
	label == nil
		ifFalse:
			[label
				displayOn: Display
				transformation: self displayTransformation
				clippingBox: self insetDisplayBox
				fixedPoint: label boundingBox center]
