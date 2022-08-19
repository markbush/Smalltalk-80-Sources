removeSelector: selector
	"Assuming that the message selector is in the receiver's method dictionary,
	remove it.  If the selector is not in the method dictionary, create an error
	notification."

	methodDict removeKey: selector.
	self flushCache.
	self checkChangeSelector: selector
