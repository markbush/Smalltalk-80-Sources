addSelectorUnchecked: selector withMethod: compiledMethod
	"Add the message selector with the corresponding compiled method to the receiver's
	method dictionary.  Do not check for effect on (multiple) inheritance."

	methodDict at: selector put: compiledMethod.
	self flushCache
