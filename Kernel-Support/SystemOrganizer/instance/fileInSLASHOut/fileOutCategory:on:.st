fileOutCategory: category on: aFileStream
	| class first |
	first _ true.
	(self superclassOrder: category) do:
		[:class |
		first
			ifTrue: [first _ false]
			ifFalse: [aFileStream cr; nextPut: Character newPage; cr].
		class
			fileOutOn: aFileStream
			moveSource: false
			toFile: 0.
		class removeFromChanges]
