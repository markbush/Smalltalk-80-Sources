displayAlign: aPoint1 with: aPoint2 clippingBox: aRectangle
	"Display the border and region of the reciever so that its position at
	aPoint1 is aligned with position aPoint2.  The displayed information should
	be clipped so that only information with the area determined by aRectangle
	is displayed."

	| savedRegion |
	savedRegion _ self region.
	self region: ((savedRegion align: aPoint1 with: aPoint2) intersect: aRectangle).
	self displayOn: Display.
	self region: savedRegion
