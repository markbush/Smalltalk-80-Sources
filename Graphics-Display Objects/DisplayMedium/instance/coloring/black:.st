black: aRectangle
	"Set all bits in the receiver's area defined by aRectangle to black (ones)."
	self fill: aRectangle rule: Form over mask: Form black
