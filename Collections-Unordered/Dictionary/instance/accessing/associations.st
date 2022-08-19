associations
	"Answer an OrderedCollection containing the receiver's associations in an
	arbitrary order."

	| aCollection key |
	aCollection _ OrderedCollection new: self size.
	self associationsDo: [:key | aCollection add: key].
	^aCollection
