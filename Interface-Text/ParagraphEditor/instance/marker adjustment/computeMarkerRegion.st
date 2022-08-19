computeMarkerRegion
	paragraph compositionRectangle height = 0
		ifTrue:	[^0@0 extent: 10 @ scrollBar inside height]
		ifFalse:	[^0@0 extent:
					10 @ ((paragraph clippingRectangle height asFloat /
							self scrollRectangleHeight * scrollBar inside height) rounded
							min: scrollBar inside height)]
