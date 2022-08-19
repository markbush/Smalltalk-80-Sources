removeCategory
	| classes |
	self changeRequest ifFalse: [^self].
	classes _ organization superclassOrder: category.
	classes isEmpty ifFalse:
		[(self confirm: 'Are you certain that you want to
remove all classes in this category?') ifFalse: [^self].
		classes reverseDo: [:cls | cls removeFromSystem]].
	organization removeCategory: category.
	Smalltalk changes reorganizeSystem.
	self newCategoryList: nil
