addAll: aCollection
	"Include all the elements of aCollection as the receiver's elements.  Answer
	aCollection."

	aCollection do: [:each | self add: each].
	^aCollection
