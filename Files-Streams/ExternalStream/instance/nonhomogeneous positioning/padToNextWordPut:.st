padToNextWordPut: char
	"Make position even on word boundary, writing the padding character, char, if necessary.  Answer nil if already on a word boundary"

	position even
		ifTrue: [^nil]
		ifFalse: [^self nextPut: char]
