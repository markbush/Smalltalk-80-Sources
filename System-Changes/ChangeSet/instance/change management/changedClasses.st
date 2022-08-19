changedClasses
	"Answer a collection of the changed or edited classes, not including removed classes."

	| classes |
	classes _ Set new.
	methodChanges keys do: [:className | classes add: (self classNamed: className)].
	classChanges keys do: [:className | classes add: (self classNamed: className)].
	^classes
