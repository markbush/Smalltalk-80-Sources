transformation: aTransformation
	"Set the receiver's local transformation to a copy of aTransformation, unlock the
	receiver (see View|unlock) and set the viewport to undefined (this forces it to be
	recomputed when needed)."

	self setTransformation: aTransformation copy
