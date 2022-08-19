black
	"Set all bits in the receiver to black (ones)."

	self fill: self boundingBox
		mask: Form black
