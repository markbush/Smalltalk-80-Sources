sizeForEvaluatedEffect: encoder
	self returns ifTrue: [^self sizeForEvaluatedValue: encoder].
	^(self sizeExceptLast: encoder)
		+ (statements last sizeForEffect: encoder)
