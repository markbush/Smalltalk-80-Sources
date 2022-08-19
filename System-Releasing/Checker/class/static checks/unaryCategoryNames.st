unaryCategoryNames
	"Return the names of all the categories with only one message in them"

	| aSet |
	aSet _ Set new: 1000.
	Smalltalk allBehaviorsDo:
		[:class | class organization categories do:
			[:catName |
			(class organization listAtCategoryNamed: catName) size = 1
				ifTrue: [aSet add: class name, ' >> ',  catName]]].
	^aSet asSortedCollection
