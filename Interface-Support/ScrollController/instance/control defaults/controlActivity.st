controlActivity
	self scrollBarContainsCursor
		ifTrue: [self scroll]
		ifFalse: [super controlActivity]
