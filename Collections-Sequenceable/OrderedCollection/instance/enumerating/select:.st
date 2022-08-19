select: aBlock
	"Evaluate aBlock with each of my elements as the argument.  Collect into a new
	collection like me, only those elements for which aBlock evaluates to true.
	Override superclass in order to use add:, not at:put:."

	| newCollection |
	newCollection _ self copyEmpty.
	self do: [:each | (aBlock value: each) ifTrue: [newCollection add: each]].
	^newCollection
