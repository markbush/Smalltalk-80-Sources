white
	"Set all bits in the form to white ( to zeros)."
	self fill: self boundingBox
		mask: Form white
