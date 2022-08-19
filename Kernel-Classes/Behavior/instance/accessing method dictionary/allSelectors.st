allSelectors
	"Answer a set of all the message selectors that instances of the receiver can
	understand."
	| aSet |
	aSet _ Set new.
	self withAllSuperclasses do: [:each | aSet addAll: each selectors].
	^aSet

	"Point allSelectors."
