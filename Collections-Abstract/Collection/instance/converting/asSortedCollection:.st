asSortedCollection: aBlock
	"Answer a new instance of SortedCollection whose elements are the elements of
	the receiver.  The sort order is defined by the argument, aBlock."

	| aSortedCollection |
	aSortedCollection _ SortedCollection new: self size.
	aSortedCollection sortBlock: aBlock.
	aSortedCollection addAll: self.
	^aSortedCollection
