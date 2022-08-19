at: anInteger
	"Answer with my element at index anInteger.
	at: is used by a knowledgeable client to access an existing element"

	(anInteger < 1 or: [anInteger + firstIndex - 1 > lastIndex])
		ifTrue: [self errorNoSuchElement]
		ifFalse: [^super at: anInteger + firstIndex - 1]
