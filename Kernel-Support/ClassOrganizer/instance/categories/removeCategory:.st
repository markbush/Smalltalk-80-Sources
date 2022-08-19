removeCategory: cat
	"Remove the category named, cat.  Create an error if the category has
	any elements in it."

	| index lastStop |
	index _ categoryArray indexOf: cat ifAbsent: [^self].
	lastStop _
		index = 1
			ifTrue: [0]
			ifFalse: [categoryStops at: index - 1].
	(categoryStops at: index) - lastStop > 0
		ifTrue: [^self error: 'cannot remove non-empty category'].
	categoryArray _
		(categoryArray copyFrom: 1 to: index - 1)
			, (categoryArray copyFrom: index + 1 to: categoryArray size).
	categoryStops _
		(categoryStops copyFrom: 1 to: index - 1)
			, (categoryStops copyFrom: index + 1 to: categoryStops size).
	categoryArray size = 0
		ifTrue:
			[categoryArray _ Array with: Default.
			categoryStops _ Array with: 0]
