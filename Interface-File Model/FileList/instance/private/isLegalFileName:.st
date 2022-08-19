isLegalFileName: pattern
	"Answer whether pattern is a valid file name.  Do this by asking the appropriate directory."

	| dir nameBody |
	dir _ FileDirectory directoryFromName: pattern setFileName: [:nameBody].
	^dir isLegalFileName: pattern
