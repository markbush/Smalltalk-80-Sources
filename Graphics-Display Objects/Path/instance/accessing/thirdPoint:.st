thirdPoint: aPoint
	"Answer the argument aPoint.  Replace the third element of the receiver
	with the new value aPoint."

	collectionOfPoints at: 3 put: aPoint.
	^aPoint
