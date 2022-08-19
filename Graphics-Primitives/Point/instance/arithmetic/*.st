* scale
	"Answer a new Point that is the product of the receiver and scale (which is a
	Point or Number)."

	| scalePoint |
	scalePoint _ scale asPoint.
	^x * scalePoint x @ (y * scalePoint y)
