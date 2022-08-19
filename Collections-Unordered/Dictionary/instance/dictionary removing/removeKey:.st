removeKey: key
	"Remove key from the receiver.  If key is not in the receiver, create an error
	message.  Otherwise, answer the value associated with key."

	^self removeKey: key ifAbsent: [self errorKeyNotFound]
