allSubclasses
	"Answer an OrderedCollection of the receiver's subclasses and the receiver's ancestor's
	subclasses in breadth-first order, with the immediate subclasses first."
	| coll |
	coll _ OrderedCollection new.
	coll addAll: self subclasses.
	self subclasses do: [:eachSubclass | coll addAll: eachSubclass allSubclasses].
	^coll
