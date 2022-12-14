select: aBlock
	"Evaluate aBlock with each of my values as the argument.  Collect into a new
	dictionary, only those associations for which aBlock evaluates to true."

	| newCollection |
	newCollection _ self species new.
	self associationsDo:
		[:each |
		(aBlock value: each value) ifTrue: [newCollection add: each]].
	^newCollection
