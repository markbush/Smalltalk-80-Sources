removeAll: aCollection
	"Remove each element of aCollection from the receiver.  If successful for each,
	answer aCollection."

	aCollection do: [:each | self remove: each].
	^aCollection
