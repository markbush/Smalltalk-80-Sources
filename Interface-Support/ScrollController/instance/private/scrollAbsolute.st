scrollAbsolute
	| oldMarker |
	self changeCursor: Cursor marker.
	self canScroll & sensor anyButtonPressed ifTrue:
		[[sensor anyButtonPressed] whileTrue:
			[oldMarker _ marker.
			marker _ marker translateBy:
				0@((sensor cursorPoint y - marker center y min:
					scrollBar inside bottom - marker bottom) max: scrollBar inside top - marker top).
			(oldMarker areasOutside: marker), (marker areasOutside: oldMarker) do:
				[:region | Display fill: region rule: Form reverse mask: Form gray]].
			self scrollView.
			scrollBar display.
			self moveMarker]
