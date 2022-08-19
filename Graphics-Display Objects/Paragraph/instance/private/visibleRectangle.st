visibleRectangle
	^ (clippingRectangle intersect: compositionRectangle)
							intersect: destinationForm boundingBox
