keys
	"Answer a set containing the receiver's keys."

	| aSet key |
	aSet _ Set new: self size.
	self keysDo: [:key | aSet add: key].
	^aSet
