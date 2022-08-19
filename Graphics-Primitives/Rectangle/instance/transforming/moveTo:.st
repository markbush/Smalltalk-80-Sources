moveTo: aPoint
	"Change the corners of the receiver so that its top left position is aPoint."

	corner _ corner + aPoint - origin.
	origin _ aPoint
