whichSelectorsReferTo: literal special: specialFlag byte: specialByte
	"Answer a collection of selectors whose methods access the argument as a literal."

	| who method methodArray index arraySize |
	who_ OrderedCollection new.
	methodArray _ methodDict methodArray.
	arraySize _ methodArray size.
	index _ 0.
	[(index _ index + 1) <= arraySize] whileTrue:
		[(method _ methodArray at: index) == nil ifFalse:
			[((method refersToLiteral: literal) or:
				[specialFlag and: [method scanFor: specialByte]])
					ifTrue: [who add: (methodDict basicAt: index)]]].
	^who

	"Rectangle whichSelectorsReferTo: #+."
