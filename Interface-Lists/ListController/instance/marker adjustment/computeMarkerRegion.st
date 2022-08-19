computeMarkerRegion
	| viewList |
	viewList _ view list.
	^ 0@0 extent: 10@
			((viewList clippingRectangle height asFloat /
						viewList compositionRectangle height *
							scrollBar inside height)
					rounded min: scrollBar inside height)
