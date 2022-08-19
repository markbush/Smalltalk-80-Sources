computeBoundingBox
	| box |
	box _ Rectangle origin: (self at: 1) extent: 0 @ 0.
	collectionOfPoints do:
		[:aPoint | box _ box merge: (Rectangle origin: aPoint extent: 0 @ 0)].
	^box
