selectionBoxOffset
	"Answer an integer that determines the y position for the display box of the
	current selection."
	^selection - 1 + self minimumSelection - 1 * list lineGrid
