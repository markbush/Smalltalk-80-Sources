newClassNames
	"Compute a sorted collection of class names and cache it for efficiency."
	| names |
	names _ OrderedCollection new: self size.
	self do:
		[:cl | (cl isKindOf: Class) ifTrue: [names add: cl name]].
	^CachedClassNames _ names asSortedCollection
