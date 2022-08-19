removeCategory: aString
	"Remove each of the messages categorized under aString in the method dictionary
	of the receiver.  Then remove the category aString."

	(self organization listAtCategoryNamed: aString asSymbol) do:
		[:sel | self removeSelector: sel].
	self organization removeEmptyCategories
