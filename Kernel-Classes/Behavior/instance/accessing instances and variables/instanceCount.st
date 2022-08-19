instanceCount
	"Answer the number of instances of the receiver that are currently in use."

	| count |
	count _ 0.
	self allInstancesDo: [:x | count _ count + 1].
	^count
