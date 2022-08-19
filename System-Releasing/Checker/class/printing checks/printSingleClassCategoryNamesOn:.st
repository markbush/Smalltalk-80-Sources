printSingleClassCategoryNamesOn: aFileStream
	"Print the names of all the categories defined in only one class.

	Smalltalk printSingleClassCategoryNamesOn:
		(Disk file: 'Smalltalk.singles'). "

	self singleClassCategoryNames do: [:catName | aFileStream nextPutAll: catName; cr].
	aFileStream close
