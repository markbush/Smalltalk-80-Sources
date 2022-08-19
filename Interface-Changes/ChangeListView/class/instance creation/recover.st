recover
	"Open a view of the current changes file since the last snapshot."

	self openOn: (ChangeList new recoverFile: (SourceFiles at: 2))

	"ChangeListView recover"
