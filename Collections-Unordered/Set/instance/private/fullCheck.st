fullCheck
	self basicSize - self size <= (self basicSize // 4) ifTrue: [self grow]
