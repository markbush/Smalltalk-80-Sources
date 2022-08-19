asSortedCollection
	| aSortedCollection |
	aSortedCollection _ SortedCollection new: self size.
	self associationsDo: [:association | aSortedCollection add: association].
	^aSortedCollection
