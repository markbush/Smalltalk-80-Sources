sizeForEffect: encoder
	^(value sizeForValue: encoder)
		+ (variable sizeForStorePop: encoder)
