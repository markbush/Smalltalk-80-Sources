border: aRectangle width: borderWidth
	"Paint a border whose rectangular area is defined by aRectangle.  The width of
	the border of each side is borderWidth.  Uses Form black for drawing the border."
	self border: aRectangle
		width: borderWidth
		mask: Form black
