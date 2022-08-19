markerDelta
	^marker top - scrollBar top - ((paragraph clippingRectangle top -
		paragraph compositionRectangle top) asFloat /
			(self scrollRectangleHeight max: 1) asFloat *
				scrollBar height asFloat) rounded
