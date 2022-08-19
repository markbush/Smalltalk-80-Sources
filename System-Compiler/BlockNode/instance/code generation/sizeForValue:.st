sizeForValue: encoder
	nArgsNode _ encoder encodeLiteral: arguments size.
	remoteCopyNode _ encoder encodeSelector: #blockCopy:.
	size _ self sizeForEvaluatedValue: encoder.
	self returns
		ifFalse: [size _ size+1.  "end-block"
				encoder noteSourceRange: sourceRange forNode: self].
	arguments do: [:arg | size _ size + (arg sizeForStorePop: encoder)].
	^1 + (nArgsNode sizeForValue: encoder)
		+ (remoteCopyNode size: encoder) + 2 + size
