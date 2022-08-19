removeIndex: removedIndex
	| index |
	index _ removedIndex.
	[index < lastIndex]
		whileTrue:
			[self basicAt: index put: (self basicAt: index + 1).
			index _ index + 1].
	self basicAt: lastIndex put: nil.
	lastIndex _ lastIndex - 1
