category: cat
	"Categorize the receiver under the system category, cat, removing it from any
	previous categorization."

	(cat isKindOf: String)
		ifTrue: [SystemOrganization classify: self name under: cat asSymbol]
		ifFalse: [self errorCategoryName]
