asOrderedCollection
	"Answer a new instance of OrderedCollection whose elements are the elements of
	the receiver.  The order in which elements are added depends on the order in
	which the receiver enumerates its elements.  In the case of unordered collections,
	the ordering is not necessarily the same for multiple requests for the conversion."

	| anOrderedCollection |
	anOrderedCollection _ OrderedCollection new: self size.
	self do: [:each | anOrderedCollection addLast: each].
	^anOrderedCollection
