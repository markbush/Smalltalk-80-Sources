collect: aBlock
	"Evaluate aBlock with each of my elements as the argument.  Collect the
	resulting values into a collection that is like me.  Answer with the new
	collection. Override superclass in order to use add:, not at:put:."

	| newCollection |
	newCollection _ self species new.
	self do: [:each | newCollection add: (aBlock value: each)].
	^newCollection
