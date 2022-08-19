min: aPoint
	"Answer the upper left corner of the rectangle uniquely defined
	by the receiver and aPoint."

	^Point
		x: (x min: aPoint x)
		y: (y min: aPoint y)
