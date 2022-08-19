at: anInteger put: anObject
	"Put anObject at element index anInteger.
	at:put: can not be used to append, front or back, to an ordered collection;
	 it is used by a knowledgeable client to replace an element"

	| index |
	index _ anInteger truncated.
	(index < 1 or: [index + firstIndex - 1 > lastIndex])
		ifTrue: [self errorNoSuchElement]
		ifFalse: [^super at: index + firstIndex - 1 put: anObject]
