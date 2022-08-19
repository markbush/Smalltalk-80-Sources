to: stop by: step do: aBlock
	"Create an Interval from the receiver up to the argument, stop,
	incrementing by step.  For each element of the interval, evaluate the
	block, aBlock."

	| nextValue |
	nextValue _ self.
	step < 0
		ifTrue: [[stop <= nextValue]
				whileTrue:
					[aBlock value: nextValue.
					nextValue _ nextValue + step]]
		ifFalse: [[stop >= nextValue]
				whileTrue:
					[aBlock value: nextValue.
					nextValue _ nextValue + step]]
