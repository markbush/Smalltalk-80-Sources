removeFromChanges
	"References to the receiver, a class, and its metaclass should no longer be included
	in the system ChangeSet."
	Smalltalk changes removeClassChanges: self
