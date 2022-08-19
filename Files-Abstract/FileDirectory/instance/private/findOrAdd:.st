findOrAdd: aFile
	"find an old file if it exists, or create one"

	| f |
	(f _ self find: aFile) notNil
		ifTrue: [^f]
		ifFalse: [^self addNew: aFile]
