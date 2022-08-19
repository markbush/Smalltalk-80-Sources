listAtCategoryNumber: index
	"Answer the array of elements stored at the position index."
	| firstIndex lastIndex |
	firstIndex _ index = 1
			ifTrue: [1]
			ifFalse: [(categoryStops at: index - 1) + 1].
	lastIndex _ categoryStops at: index.
	^ elementArray copyFrom: firstIndex to: lastIndex
