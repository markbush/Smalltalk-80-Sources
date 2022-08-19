find: anObject ifAbsent: aBlock
	| index |
	index _ self findElementOrNil: anObject.
	(self basicAt: index) == nil
		ifTrue: [^aBlock value]
		ifFalse: [^index]
