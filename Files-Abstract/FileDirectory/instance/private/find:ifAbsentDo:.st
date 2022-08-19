find: aFile ifAbsentDo: aBlock
	"return aFile (partially initialized) if found, otherwise false.
	this is a default implementation"

	| fname |
	"check file name"
	fname _ self checkNameOfFile: aFile.
	aFile fileName: fname.
	"iterate through non-deleted entries of directory,
	and return partially initialized file if found"
	self do: [:each | (fname sameAs: each fileName) ifTrue: [^each]].
	"failure"
	^aBlock value: aFile
