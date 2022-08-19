controlActivity
	self scrollBarContainsCursor
		ifTrue:
			[self scroll]
		ifFalse:
			[self processKeyboard.
			self processMouseButtons].
