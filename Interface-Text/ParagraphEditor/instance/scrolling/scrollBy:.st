scrollBy: heightToMove
	"Move the paragraph by the amount, heightToMove, and reset the text selection."
	self deselect.
	paragraph scrollBy: heightToMove.
	startBlock _ paragraph characterBlockForIndex: startBlock stringIndex.
	stopBlock _ paragraph characterBlockForIndex: stopBlock stringIndex.
	self select
