removeAll
	self controlTerminate.
	view deselect.
	model removeAll.
	view displaySelectionBox.
	self controlInitialize
