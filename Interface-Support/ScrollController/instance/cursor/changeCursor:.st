changeCursor: aCursor
	"The current cursor should be set to be aCursor."
	sensor currentCursor ~~ aCursor ifTrue: [aCursor show]
