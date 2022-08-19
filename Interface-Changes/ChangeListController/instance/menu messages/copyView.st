copyView
	"Create and schedule a list browser containing only the displayed items.  Accessed by choosing the menu command clone."

	self controlTerminate.
	ChangeListView openOn: model filterCopy
