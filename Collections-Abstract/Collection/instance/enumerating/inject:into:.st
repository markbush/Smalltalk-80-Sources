inject: thisValue into: binaryBlock
	"Accumulate a running value associated with evaluating the argument,
	binaryBlock, with the current value and the receiver as block arguments.
	The initial value is the value of the argument, thisValue.
		For instance, to sum a collection, use:
			collection inject: 0 into: [:subTotal :next | subTotal + next]."

	| nextValue |
	nextValue _ thisValue.
	self do: [:each | nextValue _ binaryBlock value: nextValue value: each].
	^nextValue
