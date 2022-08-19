listAtCategoryNamed: categoryName
	"Answer the array of elements associated with the name, categoryName."

	| i |
	i _ categoryArray indexOf: categoryName ifAbsent: [^Array new].
	^self listAtCategoryNumber: i
