offset
	offset == nil
		ifTrue: [^0 @ 0]
		ifFalse: [^offset]
