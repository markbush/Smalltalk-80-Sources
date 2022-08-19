asBag
	"Answer a new instance of Bag whose elements are the elements of
	the receiver."

	| aBag |
	aBag _ Bag new.
	self do: [:each | aBag add: each].
	^aBag
