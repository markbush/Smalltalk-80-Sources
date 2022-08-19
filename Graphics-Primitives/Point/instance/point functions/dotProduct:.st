dotProduct: aPoint
	"Answer a Number that is the dot product of the receiver and the argument, aPoint.
	That is, the two points are multipled and the coordinates of the result summed."

	| temp |
	temp _ self * aPoint.
	^temp x abs + temp y abs
