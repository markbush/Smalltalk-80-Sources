borderWidth: anInteger mask: aMask
	"Set the width of the border for the receiver to be anInteger and paint it
	using aMask as the border color."

	self border: self boundingBox width: anInteger mask: aMask
