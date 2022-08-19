changed: aParameter
	self == CurrentCursor ifTrue: [self beCursor].
	super changed: aParameter
