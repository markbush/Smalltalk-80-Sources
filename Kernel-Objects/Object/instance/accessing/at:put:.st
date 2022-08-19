at: index put: value
	"Store the argument value in the indexable field of the receiver indicated by
	index. Fail if the index is not an Integer or is out of bounds. Or fail if the
	value is not of the right type for this kind of collection. Answer the
	value that was stored. Essential. See documentation in Object metaclass."

	<primitive: 61>
	index isInteger
		ifTrue: [(index >= 1 and: [index <= self size])
					ifTrue: [self errorImproperStore]
					ifFalse: [self errorSubscriptBounds: index]].
	(index isKindOf: Number)
		ifTrue: [^self at: index truncated put: value]
		ifFalse: [self errorNonIntegerIndex]
