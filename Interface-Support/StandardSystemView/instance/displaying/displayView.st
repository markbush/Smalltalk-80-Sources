displayView
	| clippingBox labelDisplayBox |
	clippingBox _ self clippingBox.
	labelDisplayBox _ self labelDisplayBox.
	(labelDisplayBox intersect: clippingBox) displayOn: Display.
	labelText isNil
		ifFalse:
			[labelText
				displayOn: Display
				at: (labelDisplayBox center -
						(labelText boundingBox center -
							labelText boundingBox topLeft))
				clippingBox: clippingBox]
