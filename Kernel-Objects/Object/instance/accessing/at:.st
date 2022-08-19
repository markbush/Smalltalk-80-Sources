at: index
	"Answer the value of an indexable field in the receiver. Fail if the
	argument index is not an Integer or is out of bounds. Essential. See
	documentation in Object metaclass."

	<primitive: 60>
	index isInteger
		ifTrue: [self errorSubscriptBounds: index].
	(index isKindOf: Number)
		ifTrue: [^self at: index truncated]
		ifFalse: [self errorNonIntegerIndex]
