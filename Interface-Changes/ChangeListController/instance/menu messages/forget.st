forget
	self controlTerminate.
	Cursor execute showWhile: [model forget].
	self controlInitialize
