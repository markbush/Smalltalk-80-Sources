addCategory
	| aString newCategory |
	self changeRequest ifFalse: [^self].
	aString _ self prompt: 'Enter new category name' initially: 'category name'.
	aString isEmpty ifTrue: [^ self].
	newCategory _ aString asSymbol.
	organization addCategory: newCategory before: category.
	Smalltalk changes reorganizeSystem.
	self newCategoryList: newCategory
