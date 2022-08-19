sizeForValue: encoder
	self reserve: encoder.
	code < 256
		ifTrue: [^1].
	^2
