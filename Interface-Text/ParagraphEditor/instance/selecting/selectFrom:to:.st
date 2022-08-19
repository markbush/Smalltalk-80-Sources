selectFrom: start to: stop
	"The text selection starts at the character at position start and ends at the
	character at position stop."

	self deselect.
	startBlock _ paragraph characterBlockForIndex: start.
	stopBlock _ paragraph characterBlockForIndex: stop+1.
	self selectAndScroll
