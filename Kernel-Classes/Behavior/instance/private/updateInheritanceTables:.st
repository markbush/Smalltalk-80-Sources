updateInheritanceTables: oldSelf
	"I have replaced an old behavior or class.  Update the multiple inheritance tables"
	self updateInheritanceTable: SelectorsOfConflictMethods oldSelf: oldSelf.
	self updateInheritanceTable: SelectorsOfCopiedMethods oldSelf: oldSelf.
	self updateInheritanceTable: SelectorsOfDirectedMethods oldSelf: oldSelf
