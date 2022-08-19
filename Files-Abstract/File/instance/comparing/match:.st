match: aFile
	"Answer whether the two strings, the receiver's file name and that
	of the argument, aFile, match.  (See String|match:)."
	^self fileName match: aFile fileName
