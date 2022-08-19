printUnaryCategoryNamesOn: aFileStream
	"Print the names of all the categories with only one message.

	Smalltalk printUnaryCategoryNamesOn: (Disk file: 'Smalltalk.unaries')."

	self unaryCategoryNames do:
		[:catName | aFileStream nextPutAll: catName; cr].
	aFileStream close
