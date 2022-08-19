includesSelector: aSymbol
	"Answer whether the message whose selector is the argument is in the
	method dictionary of the receiver's class."

	^methodDict includesKey: aSymbol
