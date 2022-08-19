viewDelta
	^paragraph clippingRectangle top
		- paragraph compositionRectangle top
		- ((marker top - scrollBar inside top) asFloat
				/ scrollBar inside height asFloat * self scrollRectangleHeight asFloat)
			roundTo: paragraph lineGrid
