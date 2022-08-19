removeSelectorUnchecked: selector
	"Assuming that the message selector is in the receiver's method dictionary,
	remove it.  If the selector is not in the method dictionary, create an error
	notification.  Do not check for effect on (multiple) inheritance."

	methodDict removeKey: selector.
	self flushCache
