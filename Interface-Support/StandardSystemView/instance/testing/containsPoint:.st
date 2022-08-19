containsPoint: aPoint
	^(super containsPoint: aPoint)
		| (self labelDisplayBox containsPoint: aPoint)
