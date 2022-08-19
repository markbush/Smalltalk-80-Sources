addAllLast: anOrderedCollection
	"Add each element of anOrderedCollection at the end of the receiver.  Answer
	anOrderedCollection."

	anOrderedCollection do: [:each | self addLast: each].
	^anOrderedCollection
