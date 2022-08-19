scrollUp
	self changeCursor: Cursor up.
	sensor anyButtonPressed
		ifTrue: [self canScroll
					ifTrue:
						[self scrollViewUp.
						self moveMarker]].
	sensor waitNoButton
