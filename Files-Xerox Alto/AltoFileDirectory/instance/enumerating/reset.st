reset
	dirFile == nil
		ifTrue: [self open]
		ifFalse: [self flush].
	dirFile readOnly.
	dirFile reset
