selectionBoxOffset: listIndex
	"Answer an integer that determines the y position for the display box of a
	particular selection."
	^(listIndex - 1 + self minimumSelection - 1) * list lineGrid
