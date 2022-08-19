reverse
	"Answer with a new collection like me with its elements in the opposite order.
	Override superclass in order to use add:, not at:put:."

	| newCollection |
	newCollection _ self species new.
	self reverseDo: [:each | newCollection add: each].
	^newCollection
