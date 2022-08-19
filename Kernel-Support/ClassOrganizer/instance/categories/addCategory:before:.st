addCategory: heading before: nextHeading
	| nextIndex elements |
	"Add a new category named heading.  If nextHeading is specified (not nil)
	and can be found, then INSERT before that entry.  Otherwise ADD it at the end.
	If heading already exists, then MOVE it where it would have gone otherwise."

	(categoryArray indexOf: heading) > 0
		ifTrue:  "already there - maybe move"
			["slow but sure;  remove all, then insert all"
			elements _ self listAtCategoryNamed: heading.	"Save elements"
			elements do: [:elt | self removeElement: elt].
			self removeCategory: heading.		"Remove old entry"
			self addCategory: heading before: nextHeading.	"Now insert anew"
			self classifyAll: elements under: heading.			"And restore elements"
			^self].
	nextIndex _ categoryArray indexOf: nextHeading
							ifAbsent: [categoryArray size+1].
	categoryArray _ categoryArray  "insert before nextIndex"
			copyReplaceFrom: nextIndex
			to: nextIndex-1
			with: (Array with: heading).
	categoryStops _ categoryStops
			copyReplaceFrom: nextIndex
			to: nextIndex-1
			with: (Array with: (nextIndex=1
					ifTrue: [0]
					ifFalse: [categoryStops at: nextIndex-1])).
