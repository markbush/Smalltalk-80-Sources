updateCategories
	self changeRequest ifFalse: [^self].
	self newCategoryList: category
