printCategoryNamesOn: aFileStream
	"Print the names of all the categories, alphabetically, in the file aFileStream."

	self allCategoryNames do: [:catName | aFileStream nextPutAll: catName; cr].
	aFileStream close
	"Smalltalk printCategoryNamesOn: (Disk file: 'Smalltalk.categories')."
