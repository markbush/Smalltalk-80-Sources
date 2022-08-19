renameCategory
	| aString newCategory |
	self changeRequest ifFalse: [^self].
	aString _ self prompt: 'Enter new category name' initially: category.
	aString isEmpty ifTrue: [^ self].
	newCategory _ aString asSymbol.
	(organization renameCategory: category to: newCategory)
		ifTrue:
			[Smalltalk changes reorganizeSystem.
			self newCategoryList: newCategory]
