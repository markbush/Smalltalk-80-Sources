sizeExceptLast: encoder
	| totalSize |
	totalSize _ 0.
	1 to: statements size - 1 do:
		[:i | totalSize _ totalSize + ((statements at: i) sizeForEffect: encoder)].
	^totalSize
