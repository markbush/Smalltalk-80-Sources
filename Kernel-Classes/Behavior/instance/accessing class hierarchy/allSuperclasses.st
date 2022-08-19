allSuperclasses
	"Answer an OrderedCollection of the receiver's superclasses and the receiver's ancestor's
	superclasses in breadth-first order, with the immediate superclasses first."
	| coll |
	coll _ OrderedCollection new.
	self allSuperclassesInto: coll.
	^coll
