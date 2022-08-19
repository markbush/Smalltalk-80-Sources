go: distance
	"Move the receiver in its current direction a number of bits equal to
	the argument, distance.  If the pen is down, a line will be drawn using
	the receiver's form source as the shape of the drawing brush."

	| dir |
	dir _ direction degreesToRadians.
	dir _ dir cos @ dir sin.
	self goto: dir * distance + location
