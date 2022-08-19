computeBoundingBox
	"Answer the minimum Rectangle that encloses the bounding boxes of the
	receiver's subViews. If the receiver has no subViews, then the bounding box is the
	receiver's window. Subclasses should redefine View|boundingBox if a more
	suitable default for the case of no subViews is available."

	| aRectangle |
	subViews isEmpty ifTrue: [^self getWindow].
	aRectangle _ self firstSubView transform: self firstSubView boundingBox.
	subViews do:
		[:aView |
		aRectangle _ aRectangle merge: (aView transform: aView boundingBox).].
	^aRectangle expandBy: borderWidth
