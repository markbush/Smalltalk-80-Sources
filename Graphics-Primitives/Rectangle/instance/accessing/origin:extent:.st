origin: originPoint extent: extentPoint
	"Set the point at the top left corner of the receiver to be originPoint and
	set the width and height of the receiver to be extentPoint."
	origin _ originPoint.
	corner _ origin + extentPoint
