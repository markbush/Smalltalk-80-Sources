allCategoryNames
	"Answer a SortedCollection of the names of all the categories (sorted alphabetically)."

	| aSet |
	aSet _ Set new: 1000.
	Smalltalk allBehaviorsDo:
		[:class | class organization categories do: [:catName | aSet add: catName]].
	^aSet asSortedCollection
