occurrencesOf: anObject
	"Answer how many of the receiver's elements are equal to anObject."

	| count |
	count _ 0.
	self do: [:each | anObject = each ifTrue: [count _ count + 1]].
	^count
