boundingBox
	"Answer the bounding box which for the default case is the rectangular
	area surrounding the bounding boxes of all the subViews."

	boundingBox ~~ nil
		ifTrue: [^boundingBox]
		ifFalse: [^self computeBoundingBox]
