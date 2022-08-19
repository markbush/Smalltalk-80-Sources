allInstances
	"Answer a collection of all instances of this class."

	| aCollection |
	aCollection _ OrderedCollection new.
	self allInstancesDo:
		[:x | x == aCollection ifFalse: [aCollection add: x]].
	^aCollection
