clipRect: aRectangle
	"Set the clipX, clipY clipWidth andclipHeight instance variables in BitBlt.
	This is a shorthand way to set four of the parameters to BitBlt."

	clipX _ aRectangle left.
	clipY _ aRectangle top.
	clipWidth _ aRectangle width.
	clipHeight _ aRectangle height
