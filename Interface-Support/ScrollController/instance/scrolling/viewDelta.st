viewDelta
	"Answer an integer that indicates how much the view should be scrolled.
	The scroll bar has been moved and now the view must be so the amount to
	scroll is computed as a ratio of the current scroll bar position."

	^view window top - view boundingBox top -
		((marker top - scrollBar inside top) asFloat /
			scrollBar inside height asFloat *
				view boundingBox height asFloat) rounded
