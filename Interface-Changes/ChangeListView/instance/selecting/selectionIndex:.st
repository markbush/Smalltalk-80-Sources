selectionIndex: yPosition
	"Answer the selection index corresponding to a particular Y coordinate."

	^(yPosition - list compositionRectangle top) // list lineGrid - self minimumSelection + 2
