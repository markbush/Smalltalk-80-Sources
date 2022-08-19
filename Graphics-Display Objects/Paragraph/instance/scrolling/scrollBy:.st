scrollBy: heightToMove
	"Change the composition rectangle such that the first line of text corresponds
	to the line at the current first line plus heightToMove, modulo the grid of the
	receiver's textstyle."
	self scrollBy: heightToMove grid: textStyle lineGrid.
