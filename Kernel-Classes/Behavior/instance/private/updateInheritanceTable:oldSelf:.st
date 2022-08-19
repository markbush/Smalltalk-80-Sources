updateInheritanceTable: table oldSelf: oldSelf
	"I have replaced an old behavior or class.  Update the given multiple inheritance table"
	table do:
		[:array | 1 to: array size do:
			[:i | (array at: i)==oldSelf ifTrue: [array at: i put: self]]]
