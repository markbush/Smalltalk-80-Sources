size
	"Answer how many elements the receiver contains."
	| tally |
	tally _ 0.
	self do: [:each | tally _ tally + 1].
	^tally
