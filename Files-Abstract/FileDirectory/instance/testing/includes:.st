includes: aFile
	"Answer whether aFile is in the receiver's list of files."
	^(self find: aFile) notNil
