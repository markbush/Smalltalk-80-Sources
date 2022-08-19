classify: element under: heading
	"Store the argument, element, in the category named heading."

	| catName catIndex elemIndex realHeading |
	realHeading _ heading asSymbol.

	(catName _ self categoryOfElement: element) ~~ nil
		ifTrue:  "Element already there"
			[realHeading = Default ifTrue: [^self].	"Default causes no change"
			realHeading = catName ifTrue: [^self].	"heading didnt change"
			self removeElement: element].	"remove from old heading if did change"

	(categoryArray indexOf: realHeading) = 0 ifTrue: [self addCategory: realHeading].
	"add realHeading if not there already"

	catIndex _ categoryArray indexOf: realHeading.
	elemIndex _
		catIndex > 1
			ifTrue: [categoryStops at: catIndex - 1]
			ifFalse: [0].
	[(elemIndex _ elemIndex + 1) <= (categoryStops at: catIndex)
		and: [element >= (elementArray at: elemIndex)]] whileTrue.

	"elemIndex is now the index for inserting the element. Do the insertion before it."
	elementArray _
		(elementArray copyFrom: 1 to: elemIndex - 1)
			, (Array with: element)
			, (elementArray copyFrom: elemIndex to: elementArray size).	"insertion"

	"add one to stops for this and later categories"
	catIndex to: categoryArray size do:
		[:i | categoryStops at: i put: (categoryStops at: i) + 1].

	"remove empty default category if any"
	categoryArray indexOf: Default ifAbsent: [^self].
	(self listAtCategoryNamed: Default) size = 0
		ifTrue: [self removeCategory: Default].
