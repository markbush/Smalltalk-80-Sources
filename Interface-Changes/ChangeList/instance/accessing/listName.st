listName
	listName size = 0
		ifTrue: [^'Changes']
		ifFalse: [^listName]
