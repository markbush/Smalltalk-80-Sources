collect: aBlock
	"Evaluate aBlock with each of my elements as the argument.  Collect the
	resulting values into an OrderedCollection  Answer with the new collection.
	Override superclass in order to produce OrderedCollection instead of
	SortedCollection. "

	| newCollection |
	newCollection _ OrderedCollection new.
	self do: [:each | newCollection add: (aBlock value: each)].
	^newCollection
