computeMarkerRegion
	"Answer the rectangular area in which the gray area of the scroll bar
	should be displayed."

	^0@0 extent: 10 @
			((view window height asFloat /
						view boundingBox height *
							scrollBar inside height)
				 rounded min: scrollBar inside height)
