selectAndScrollFrom: start to: stop
	self deselect.
	startBlock _ paragraph characterBlockForIndex: start.
	stopBlock _ paragraph characterBlockForIndex: stop + 1.
	self selectAndScroll
