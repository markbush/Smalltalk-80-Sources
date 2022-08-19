basicAt: index
	"Answer the value of an indexable field in the receiver. Fail if the
	argument index is not an Integer or is out of bounds. Essential. See
	documentation in Object metaclass.  Do not override this message in any
	subclass."

	<primitive: 60>
	(index isKindOf: Integer) ifTrue: [self errorSubscriptBounds: index].
	(index isKindOf: Number)
		ifTrue: [^self basicAt: index truncated]
		ifFalse: [self errorNonIntegerIndex]
