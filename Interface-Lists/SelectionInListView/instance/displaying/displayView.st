displayView
	isEmpty
		ifTrue: [self clearInside]
		ifFalse: [super displayView]
