whichClassesHaveCategory: categoryName
	"Return the names of all the classes with the category.
	Smalltalk whichClassesHaveCategory: 'accessing'."

	| aStream |
	aStream _ WriteStream on: (Array new: 500).
	Smalltalk allBehaviorsDo:
		[:class |
		(class organization categories includes: categoryName asSymbol)
			ifTrue: [aStream nextPut: class name]].
	^aStream contents asSortedCollection
