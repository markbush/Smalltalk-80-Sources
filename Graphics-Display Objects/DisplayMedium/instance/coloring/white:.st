white: aRectangle
	"Set all bits in the receiver's area defined by aRectangle to white (zeros)."
	self fill: aRectangle rule: Form over mask: Form white
