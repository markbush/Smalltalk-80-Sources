isLegalOldFileName: aString
	"Answer whether aString is a legal file name."

	^(self checkName: aString fixErrors: true) = aString
		and: [self includesKey: aString]
