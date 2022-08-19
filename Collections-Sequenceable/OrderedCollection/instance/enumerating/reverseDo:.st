reverseDo: aBlock
	"override the superclass for performance"

	| index |
	index _ lastIndex.
	[index >= firstIndex]
		whileTrue:
			[aBlock value: (self basicAt: index).
			index _ index - 1]
