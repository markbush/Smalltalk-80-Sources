superclassOrder: category
	"Answer an ordered collection containing the classes in category (a string).
	The classes are ordered with superclasses first so they can be filed in."
	| list |
	list _
		(self listAtCategoryNamed: category asSymbol)
			collect: [:title | Smalltalk at: title].
	^ ChangeSet superclassOrder: list
