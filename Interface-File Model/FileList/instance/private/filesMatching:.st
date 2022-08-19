filesMatching: pattern
	"Answer a list of file names matching the pattern string.  Do this by asking the appropriate directory."

	| dir nameBody matches |
	dir _ FileDirectory directoryFromName: pattern setFileName: [:nameBody].
	matches _ dir filesMatching: nameBody.
	^matches
