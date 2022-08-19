valueAtNewKey: aKey put: anObject atIndex: index declareFrom: aDictionary
	"Handle overriding atKey:put: from Dictionary so that adding
	something new to a system dictionary such as Smalltalk checks
	Undeclared and fixes up all references to the undeclared variable"

	(aDictionary includesKey: aKey)
		ifTrue:
			[self atNewIndex: index
				put: ((aDictionary associationAt: aKey) value: anObject).
			aDictionary removeKey: aKey]
		ifFalse:
			[self atNewIndex: index put: (Association key: aKey value: anObject)].
	self flushClassNameCache
