printMultipleCategoryMessageNamesOn: aFileStream
	"Print the names of all the messages defined in more than one category."

	| aCollection |
	aCollection _ self multipleCategoryMessageNames asSortedCollection.
	aCollection do:
		[:selector |
		aFileStream cr; nextPutAll: selector.
		Smalltalk allBehaviorsDo:
			[:class |
			(class includesSelector: selector)
				ifTrue:
					[ aFileStream crtab: 1; nextPutAll: class name.
					aFileStream nextPutAll: '>'.
					aFileStream
						nextPutAll: (class whichCategoryIncludesSelector: selector)]]].
	aFileStream close
	"Checker printMultipleCategoryMessageNamesOn:
		(Disk file: 'Smalltalk.multcats')."
