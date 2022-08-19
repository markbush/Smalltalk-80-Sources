occurrencesOf: anObject
	"Answer how many of the receiver's elements are equal to anObject."

	| tally |
	tally _ 0.
	self do: [:each | anObject = each ifTrue: [tally _ tally + 1]].
	^tally
