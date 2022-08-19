scrollDown
	self changeCursor: Cursor down.
	sensor anyButtonPressed
		ifTrue: [self canScroll
					ifTrue:
						[self scrollViewDown.
						self moveMarker]].
	sensor waitNoButton
