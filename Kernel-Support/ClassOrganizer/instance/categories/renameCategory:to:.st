renameCategory: oldName to: newName
	"Answer the array of elements associated with the name, categoryName."
	| i symbol |
	i _ categoryArray indexOf: oldName
		ifAbsent: [^ false].
	symbol _ newName asSymbol.
	categoryArray indexOf: symbol
		ifAbsent: [categoryArray at: i put: symbol.  ^ true].
	^ false  "newName was already there"
