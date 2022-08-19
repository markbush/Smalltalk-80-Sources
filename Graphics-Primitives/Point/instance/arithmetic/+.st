+ delta
	"Answer a new Point that is the sum of the receiver and delta (which is a Point
	or Number)."

	| deltaPoint |
	deltaPoint _ delta asPoint.
	^x + deltaPoint x @ (y + deltaPoint y)
