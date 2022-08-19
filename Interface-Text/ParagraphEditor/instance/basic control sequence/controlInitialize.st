controlInitialize
	super controlInitialize.
	startBlock _ paragraph characterBlockForIndex: startBlock stringIndex.
	stopBlock _ paragraph characterBlockForIndex: stopBlock stringIndex.
	self initializeSelection.
	beginTypeInBlock _ nil.
