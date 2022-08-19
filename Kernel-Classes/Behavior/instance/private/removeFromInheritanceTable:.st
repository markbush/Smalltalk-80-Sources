removeFromInheritanceTable: table
	"I have been deleted -- remove me from the given inheritance table"
	| keys list |
	"get keys first, since we may be deleting entries in the midst of the loop that follows"
	keys _ table keys.
	keys do:
		[:key | list _ (table at: key) copyWithout: self.
		list size = 0
			ifTrue: [table removeKey: key]
			ifFalse: [table at: key put: list]]
