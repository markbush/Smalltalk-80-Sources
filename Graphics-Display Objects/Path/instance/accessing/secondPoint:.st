secondPoint: aPoint
	"Answer the argument aPoint.  Replace the second element of the receiver
	with the new value aPoint."

	collectionOfPoints at: 2 put: aPoint.
	^aPoint
