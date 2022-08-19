at: aKey put: anObject
	"Override from Dictionary so that can check Undeclared and fix up
	references of undeclared variables."

	| index element |
	index _ self findKeyOrNil: aKey.
	element _ self basicAt: index.
	element == nil
		ifTrue:
			[self
				valueAtNewKey: aKey
				put: anObject
				atIndex: index
				declareFrom: Undeclared]
		ifFalse:
			[element value: anObject].
	^anObject
