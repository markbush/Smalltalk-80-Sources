selectAt: characterIndex
	"Place the character before the character at position characterIndex.  Make
	certain the selection is in the view."

	self deselect.
	startBlock _ paragraph characterBlockForIndex: characterIndex.
	stopBlock _ startBlock copy.
	self selectAndScroll
