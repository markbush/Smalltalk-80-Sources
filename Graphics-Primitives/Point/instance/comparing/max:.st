max: aPoint
	"Answer the lower right corner of the rectangle uniquely defined
	by the receiver and aPoint."

	^Point
		x: (x max: aPoint x)
		y: (y max: aPoint y)
