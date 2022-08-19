asSortedCollection
	"Answer a new instance of SortedCollection whose elements are the elements of
	the receiver.  The sort order is the default less than or equal ordering."

	| aSortedCollection |
	aSortedCollection _ SortedCollection new: self size.
	aSortedCollection addAll: self.
	^aSortedCollection
