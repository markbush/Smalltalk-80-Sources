markerDelta
	^marker top
		- scrollBar inside top
		- ((view window top - view boundingBox top) asFloat
			/ view boundingBox height asFloat *
				scrollBar inside height asFloat) rounded
