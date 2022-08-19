checkNameOfFile: aString
	"Answer whether aString is a valid file name."
	^self checkNameOfFile: aString fixErrors: false
