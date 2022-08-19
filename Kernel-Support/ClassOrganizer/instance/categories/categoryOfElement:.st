categoryOfElement: element
	"Answer the category associated with the argument, element."

	| index |
	index _ self numberOfCategoryOfElement: element.
	index = 0
		ifTrue: [^nil]
		ifFalse: [^categoryArray at: index]
