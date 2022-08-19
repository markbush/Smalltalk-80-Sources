removeAllSuchThat: aBlock
	"Evaluate aBlock for each element of the receiver.  Remove each element for
	which aBlock evaluates to true.
	A subclass might have to override this message to initialize additional instance
	variables for newCollection"

	| index element newCollection |
	newCollection _ self species new.
	index _ firstIndex.
	[index <= lastIndex]
		whileTrue:
			[element _ self basicAt: index.
			(aBlock value: element)
				ifTrue:
					[newCollection add: element.
					self removeIndex: index]
				ifFalse: [index _ index + 1]].
	^newCollection
