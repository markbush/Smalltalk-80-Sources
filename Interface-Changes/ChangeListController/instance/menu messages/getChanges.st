getChanges
	self controlTerminate.
	model addChangeSet: Smalltalk changes.
	self controlInitialize
