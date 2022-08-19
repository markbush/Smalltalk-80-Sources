sizeForStorePop: encoder
	self reserve: encoder.
	(code < 24 and: [code noMask: 8])
		ifTrue: [^1].
	^2
