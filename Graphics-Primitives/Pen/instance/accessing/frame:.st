frame: aRectangle
	"Set the rectangle in which the receiver can draw."
	frame _ aRectangle.
	self clipRect: aRectangle
