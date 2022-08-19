displayOn: aDisplayMedium transformation: aWindowingTransformation clippingBox: aRectangle
	"Display the border and region of the reciever so that it is scaled and translated
	with respect to aWindowingTransformation.  The displayed information should
	be clipped so that only information with the area determined by aRectangle
	is displayed."

	| screenRectangle |
	screenRectangle _
		(aWindowingTransformation applyTo: self) intersect: aRectangle.
	borderWidth ~~ 0 & (insideColor ~~ nil)
		ifTrue:
			[aDisplayMedium fill: screenRectangle mask: borderColor.
			aDisplayMedium
				fill: (screenRectangle insetBy: borderWidth)
				mask: insideColor]
