classObject
	| class |
	^Smalltalk at: className ifAbsent:
		[(className size > 6 and: [(className copyFrom: className size - 5 to: className size) = ' class'])
			ifTrue:
				[class _ Smalltalk at: (className copyFrom: 1 to: className size - 6) asSymbol ifAbsent: [^nil].
				(class isKindOf: Class) ifTrue: [class class] ifFalse: [nil]]
			ifFalse:
				[nil]]
