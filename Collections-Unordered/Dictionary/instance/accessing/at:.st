at: key
	"Answer the value at key.  If key is not found, create an error message."

	^self at: key ifAbsent: [self errorKeyNotFound]
