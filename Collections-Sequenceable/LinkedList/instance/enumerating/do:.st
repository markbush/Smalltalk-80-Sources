do: aBlock
	| aLink |
	aLink _ firstLink.
	[aLink == nil] whileFalse:
		[aBlock value: aLink.
		 aLink _ aLink nextLink]
