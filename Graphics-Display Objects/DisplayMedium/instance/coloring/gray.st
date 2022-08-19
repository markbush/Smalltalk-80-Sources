gray
	"Set all bits in the receiver to gray."
	self fill: self boundingBox
		mask: Form gray
