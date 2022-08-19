destRect: aRectangle
	"Set the destination coordinates to be those of aRectangle top left and
	the width and height of the receiver to be the width and height of aRectangle."
	destX _ aRectangle left.
	destY _ aRectangle top.
	width _ aRectangle width.
	height _ aRectangle height
