recomputeSelection
	"eg after changing the composition rectangle of the paragraph"
	self deselect.
	startBlock _ paragraph characterBlockForIndex: startBlock stringIndex.
	stopBlock _ paragraph characterBlockForIndex: stopBlock stringIndex.
	selectionShowing_ false
