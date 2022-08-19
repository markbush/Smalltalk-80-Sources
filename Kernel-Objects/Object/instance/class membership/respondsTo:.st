respondsTo: aSymbol
	"Answer a Boolean as to whether the method dictionary of the receiver's class
	contains aSymbol as a message selector."

	^self class canUnderstand: aSymbol
