associationAt: key
	"Answer the association at key.  If key is not found, create an error message."

	^self associationAt: key ifAbsent: [self errorKeyNotFound]
