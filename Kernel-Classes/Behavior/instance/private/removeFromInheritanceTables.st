removeFromInheritanceTables
	"I have been deleted.  Remove me from multiple inheritance tables"
	self removeFromInheritanceTable: SelectorsOfConflictMethods.
	self removeFromInheritanceTable: SelectorsOfCopiedMethods.
	self removeFromInheritanceTable: SelectorsOfDirectedMethods
