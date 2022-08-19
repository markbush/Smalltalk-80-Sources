categories: anArray
	"Reorder my categories to be in the order of anArray.  If the
	resulting organization does not include all elements, then give an error."
	| newCategories newStops newElements catName list runningTotal |
	newCategories _ Array new: anArray size.
	newStops _ Array new: anArray size.
	newElements _ Array new: 0.
	runningTotal _ 0.
	1 to: anArray size do:
		[:i |
		catName _ (anArray at: i) asSymbol.
		list _ self listAtCategoryNamed: catName.
				newElements _ newElements, list.
				newCategories at: i put: catName.
				newStops at: i put: (runningTotal _ runningTotal + list size)].
	elementArray do:
		[:element | "check to be sure all elements are included"
		(newElements includes: element)
			ifFalse: [^self error: 'New categories must match old ones']].
	"Everything is good, now update my three arrays."
	categoryArray _ newCategories.
	categoryStops _ newStops.
	elementArray _ newElements
