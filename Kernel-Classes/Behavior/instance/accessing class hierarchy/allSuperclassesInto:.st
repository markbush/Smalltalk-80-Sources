allSuperclassesInto: orderedCollection
	"Add all my superclasses to orderedCollection if not already there.
	  Use breadth-first order."
	| mysupers |
	mysupers _ self superclasses.
	mysupers do: [:each | each allSuperclassesInto: orderedCollection].
	mysupers reverseDo:
		[:each | (orderedCollection includes: each) ifFalse: [orderedCollection addFirst: each]]
