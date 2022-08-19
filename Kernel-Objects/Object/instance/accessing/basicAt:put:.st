basicAt: index put: value
	"Store the second argument value in the indexable field of the receiver
	indicated by index. Fail if the index is not an Integer or is out of bounds. Or
	fail if the value is not of the right type for this kind of collection. Answer
	the value that was stored. Essential. See documentation in Object
	metaclass. Do not override in a subclass."

	<primitive: 61>
	(index isKindOf: Integer)
		ifTrue: [(index >= 1 and: [index <= self size])
					ifTrue: [self errorImproperStore]
					ifFalse: [self errorSubscriptBounds: index]].
	(index isKindOf: Number)
		ifTrue: [^self basicAt: index truncated put: value]
		ifFalse: [self errorNonIntegerIndex]
