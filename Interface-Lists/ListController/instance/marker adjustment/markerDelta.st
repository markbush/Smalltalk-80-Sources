markerDelta
	| viewList |
	viewList _ view list.
	^(marker top - scrollBar inside top) -
		((viewList clippingRectangle top -
				viewList compositionRectangle top) asFloat /
			viewList compositionRectangle height asFloat *
			scrollBar inside height asFloat) rounded
