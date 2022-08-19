do: aBlock
	"override the superclass for performance"

	| index |
	index _ firstIndex.
	[index <= lastIndex]
		whileTrue:
			[aBlock value: (self basicAt: index).
			index _ index + 1]
