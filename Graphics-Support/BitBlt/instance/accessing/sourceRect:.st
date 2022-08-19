sourceRect: aRectangle
	"Set the sourceX, sourceY width and height instance variables in BitBlt.  This
	is a shorthand way to set four of the parameters to BitBlt."

	sourceX _ aRectangle left.
	sourceY _ aRectangle top.
	width _ aRectangle width.
	height _ aRectangle height
