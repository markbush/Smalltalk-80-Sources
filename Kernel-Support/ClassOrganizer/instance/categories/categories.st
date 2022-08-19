categories
	"Answer an array of categories (names)."

	(categoryArray size = 1
		and: [categoryArray first = Default & (elementArray size = 0)])
		ifTrue: [^Array new].
	^categoryArray
