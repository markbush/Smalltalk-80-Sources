sizeForEvaluatedValue: encoder
	^(self sizeExceptLast: encoder)
		+ (statements last sizeForValue: encoder)
