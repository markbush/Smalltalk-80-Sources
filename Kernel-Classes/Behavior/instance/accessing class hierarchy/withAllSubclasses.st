withAllSubclasses
	"Answer an OrderedCollection of subclasses including this class in breadth first order."
	| subs |
	subs _ self allSubclasses.
	subs addFirst: self.
	^subs
