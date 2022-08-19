values
	"Answer a Bag containing the receiver's values."

	| aBag |
	aBag _ Bag new.
	self do: [:value | aBag add: value].
	^aBag
