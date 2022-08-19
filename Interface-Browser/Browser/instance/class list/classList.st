classList
	category == nil ifTrue: [^ nil].
	category = '**Hierarchy**' ifTrue:
		[^ (self selectedClass withAllSuperclasses reverse , self selectedClass allSubclasses)
			collect: [:cls | cls name]].
	^ organization listAtCategoryNamed: category
