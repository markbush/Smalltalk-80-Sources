readFrom: fileName
	"Answer an instance of me with bitmap initialized from the external file named fileName."

	| file code |
	file _ FileStream oldFileNamed: fileName.
	file readOnly; binary.
	code _ file nextWord.	"reads fileCode"
	code = 1 ifTrue: [^self readFormFile: file].
	file close.
	^nil
