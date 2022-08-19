noMask: mask
	"Treat the argument as a bit mask.  Answer true if none of the bits
	that are 1 in the argument are 1 in the receiver."

	^0 = (self bitAnd: mask)
