viewDelta
	| viewList |
	viewList _ view list.
	^(viewList clippingRectangle top -
			viewList compositionRectangle top -
			((marker top - scrollBar inside top) asFloat /
				scrollBar inside height asFloat *
				viewList compositionRectangle height asFloat))
		roundTo: viewList lineGrid
