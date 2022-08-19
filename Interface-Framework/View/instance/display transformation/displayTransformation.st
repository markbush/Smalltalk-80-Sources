displayTransformation
	"Answer a WindowingTransformation that is the result of composing all local
	transformations in the receiver's superView chain with the receiver's own local
	transformation. The resulting transformation transforms objects in the
	receiver's coordinate system into objects in the display screen coordinate
	system. "

	displayTransformation == nil
		ifTrue: [displayTransformation _ self computeDisplayTransformation].
	^displayTransformation
