timesRepeat: aBlock
	"Evaluate the argument, aBlock, the number of times represented by
	the receiver."

	| count |
	count _ 1.
	[count <= self]
		whileTrue:
			[aBlock value.
			count _ count + 1]
