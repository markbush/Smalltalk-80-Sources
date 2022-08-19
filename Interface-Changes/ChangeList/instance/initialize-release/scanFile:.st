scanFile: aFileStream
	ChangeScanner new scanFile: aFileStream do: [:change | changes add: change].
	listName size = 0
		ifTrue: [listName _ aFileStream name]
		ifFalse: [listName _ listName, ' ..'].
	self updateList
