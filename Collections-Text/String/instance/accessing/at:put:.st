at: index put: aCharacter
	"Store the Character in the field of the receiver indicated by the index.  Fail if the
	index is not an Integer or is out of bounds, or if the argument is not a Character.
	Essential.  See Object documentation whatIsAPrimitive."

	<primitive: 64>
	(aCharacter isKindOf: Character)
		ifTrue: [self errorNonIntegerIndex]
		ifFalse: [self error: 'Strings only store Characters']
