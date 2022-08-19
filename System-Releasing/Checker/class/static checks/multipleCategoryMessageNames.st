multipleCategoryMessageNames
	"Return the names of all the messages defined in more then one category,
	along with the category names."

	| aDictionary class catName selector |
	aDictionary _ IdentityDictionary new: 1024.
	Smalltalk allBehaviorsDo:
		[:class |
		class organization categories do:
			[:catName |
			(class organization listAtCategoryNamed: catName) do:
				[:selector |
				(aDictionary includesKey: selector)
					ifTrue:
						[(aDictionary at: selector) add: catName]
					ifFalse: [aDictionary
								at: selector
								put: (Set with: catName)]]]].
	^aDictionary keys select: [:selector | (aDictionary at: selector) size > 1]
