occurrencesOf: anObject
	(self includes: anObject)
		ifTrue: [^contents at: anObject]
		ifFalse: [^0]
