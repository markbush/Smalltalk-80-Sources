to: stop do: aBlock
	"Create an Interval from the receiver up to the argument, stop,
	incrementing by 1.  For each element of the interval, evaluate the
	block, aBlock."

	| nextValue |
	nextValue _ self.
	[nextValue <= stop]
		whileTrue:
			[aBlock value: nextValue.
			nextValue _ nextValue + 1]
