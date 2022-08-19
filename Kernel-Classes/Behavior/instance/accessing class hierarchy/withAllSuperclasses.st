withAllSuperclasses
	"Answer an OrderedCollection of superclasses including this class in breadth first order."
	| subs |
	subs _ self allSuperclasses.
	subs addFirst: self.
	^subs
