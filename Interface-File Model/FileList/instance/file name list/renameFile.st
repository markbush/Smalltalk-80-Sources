renameFile
	| newList newName continue |
	fileName == nil ifTrue: [^nil].
	self changeRequest ifFalse: [^nil].
	continue _ true.
	[continue] whileTrue:
		[newName _ FillInTheBlank request: 'New name for file?' initialAnswer: fileName.
		newName isEmpty ifTrue: [^nil].
		newName last = $.
			ifTrue: [newName _ newName copyFrom: 1 to: newName size-1].
		((self isLegalFileName: newName) and: [(Disk includesKey: newName) not])
			ifTrue: [continue _ false]
			ifFalse: [(BinaryChoice message: 'File exists or bad file name. Try again?')
						ifFalse: [^nil]]].
	Cursor execute showWhile:
		[newList _ list copyWithout: fileName.
		(Disk includesKey: fileName)
			ifTrue:
				[Disk rename: (Disk file: fileName) file newName: newName].
		fileName _ newName.
		newList add: fileName.
		list _ newList.
		self changed: #fileName.
		self changed: #text]
