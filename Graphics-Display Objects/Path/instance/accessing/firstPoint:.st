firstPoint: aPoint
	"Answer the argument aPoint.  Replace the first element of the receiver
	with the new value aPoint."

	collectionOfPoints at: 1 put: aPoint.
	^aPoint
