recover
	self controlTerminate.
	model recoverFile: (SourceFiles at: 2).
	self changeLabel.
	self controlInitialize
