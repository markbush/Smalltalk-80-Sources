sizeForValue: encoder
	^(value sizeForValue: encoder)
		+ (variable sizeForStore: encoder)
